***REMOVED*** set lets
$worker  = 2
$timeout = 30
$app_dir = '/var/www/projects/christchurches-map/current'
$listen  = File.expand_path 'tmp/sockets/.unicorn.sock', $app_dir
$pid     = File.expand_path 'tmp/pids/unicorn.pid', $app_dir
$std_log = File.expand_path 'log/unicorn.log', $app_dir
***REMOVED*** set config
worker_processes  $worker
working_directory $app_dir
stderr_path $std_log
stdout_path $std_log
timeout $timeout
listen  $listen
pid $pid
***REMOVED*** loading booster
preload_app true
***REMOVED*** before starting processes
before_fork do |server, worker|
  defined?(ActiveRecord::Base) && ActiveRecord::Base.connection.disconnect!
  ***REMOVED*** This allows a new master process to incrementally
  ***REMOVED*** phase out the old master process with SIGTTOU to avoid a
  ***REMOVED*** thundering herd (especially in the "preload_app false" case)
  ***REMOVED*** when doing a transparent upgrade.  The last worker spawned
  ***REMOVED*** will then kill off the old master process with a SIGQUIT.
  old_pid = "***REMOVED***{server.config[:pid]}.oldbin"
  if old_pid != server.pid
    begin
      sig = (worker.nr + 1) >= server.worker_processes ? :QUIT : :TTOU
      Process.kill(sig, File.read(old_pid).to_i)
    rescue Errno::ENOENT, Errno::ESRCH
    end
  end
end
***REMOVED*** after finishing processes
after_fork do |_server, _worker|
  defined?(ActiveRecord::Base) && ActiveRecord::Base.establish_connection
end
