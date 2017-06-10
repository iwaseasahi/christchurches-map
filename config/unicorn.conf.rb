***REMOVED*** set lets
$worker  = 2
$timeout = 30
$app_dir = "/var/www/projects/christchurches-map/current"
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
  defined?(ActiveRecord::Base) and ActiveRecord::Base.connection.disconnect!
  old_pid = "***REMOVED***{server.config[:pid]}.oldbin"
  if old_pid != server.pid
    begin
      Process.kill "QUIT", File.read(old_pid).to_i
    rescue Errno::ENOENT, Errno::ESRCH
    end
  end
end
***REMOVED*** after finishing processes
after_fork do |server, worker|
  defined?(ActiveRecord::Base) and ActiveRecord::Base.establish_connection
end
