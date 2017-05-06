***REMOVED*** Puma can serve each request in a thread from an internal thread pool.
***REMOVED*** The `threads` method setting takes two numbers a minimum and maximum.
***REMOVED*** Any libraries that use thread pools should be configured to match
***REMOVED*** the maximum value specified for Puma. Default is set to 5 threads for minimum
***REMOVED*** and maximum, this matches the default thread size of Active Record.
***REMOVED***
threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }.to_i
threads threads_count, threads_count

***REMOVED*** Specifies the `port` that Puma will listen on to receive requests, default is 3000.
***REMOVED***
port        ENV.fetch("PORT") { 3000 }

***REMOVED*** Specifies the `environment` that Puma will run in.
***REMOVED***
environment ENV.fetch("RAILS_ENV") { "development" }

***REMOVED*** Specifies the number of `workers` to boot in clustered mode.
***REMOVED*** Workers are forked webserver processes. If using threads and workers together
***REMOVED*** the concurrency of the application would be max `threads` * `workers`.
***REMOVED*** Workers do not work on JRuby or Windows (both of which do not support
***REMOVED*** processes).
***REMOVED***
***REMOVED*** workers ENV.fetch("WEB_CONCURRENCY") { 2 }

***REMOVED*** Use the `preload_app!` method when specifying a `workers` number.
***REMOVED*** This directive tells Puma to first boot the application and load code
***REMOVED*** before forking the application. This takes advantage of Copy On Write
***REMOVED*** process behavior so workers use less memory. If you use this option
***REMOVED*** you need to make sure to reconnect any threads in the `on_worker_boot`
***REMOVED*** block.
***REMOVED***
***REMOVED*** preload_app!

***REMOVED*** The code in the `on_worker_boot` will be called if you are using
***REMOVED*** clustered mode by specifying a number of `workers`. After each worker
***REMOVED*** process is booted this block will be run, if you are using `preload_app!`
***REMOVED*** option you will want to use this block to reconnect to any threads
***REMOVED*** or connections that may have been created at application boot, Ruby
***REMOVED*** cannot share connections between processes.
***REMOVED***
***REMOVED*** on_worker_boot do
***REMOVED***   ActiveRecord::Base.establish_connection if defined?(ActiveRecord)
***REMOVED*** end

***REMOVED*** Allow puma to be restarted by `rails restart` command.
plugin :tmp_restart
