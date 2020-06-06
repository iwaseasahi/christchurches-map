***REMOVED*** Puma can serve each request in a thread from an internal thread pool.
***REMOVED*** The `threads` method setting takes two numbers: a minimum and maximum.
***REMOVED*** Any libraries that use thread pools should be configured to match
***REMOVED*** the maximum value specified for Puma. Default is set to 5 threads for minimum
***REMOVED*** and maximum; this matches the default thread size of Active Record.
***REMOVED***
max_threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
min_threads_count = ENV.fetch("RAILS_MIN_THREADS") { max_threads_count }
threads min_threads_count, max_threads_count

***REMOVED*** Specifies the `port` that Puma will listen on to receive requests; default is 3000.
***REMOVED***
port        ENV.fetch("PORT") { 3000 }

***REMOVED*** Specifies the `environment` that Puma will run in.
***REMOVED***
environment ENV.fetch("RAILS_ENV") { "development" }

***REMOVED*** Specifies the `pidfile` that Puma will use.
pidfile ENV.fetch("PIDFILE") { "tmp/pids/server.pid" }

***REMOVED*** Specifies the number of `workers` to boot in clustered mode.
***REMOVED*** Workers are forked web server processes. If using threads and workers together
***REMOVED*** the concurrency of the application would be max `threads` * `workers`.
***REMOVED*** Workers do not work on JRuby or Windows (both of which do not support
***REMOVED*** processes).
***REMOVED***
***REMOVED*** workers ENV.fetch("WEB_CONCURRENCY") { 2 }

***REMOVED*** Use the `preload_app!` method when specifying a `workers` number.
***REMOVED*** This directive tells Puma to first boot the application and load code
***REMOVED*** before forking the application. This takes advantage of Copy On Write
***REMOVED*** process behavior so workers use less memory.
***REMOVED***
***REMOVED*** preload_app!

***REMOVED*** Allow puma to be restarted by `rails restart` command.
plugin :tmp_restart
