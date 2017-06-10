***REMOVED*** config valid only for current version of Capistrano
lock "3.8.1"

set :application, "my_app_name"
set :repo_url, "git@example.com:me/my_repo.git"

***REMOVED*** Default branch is :master
***REMOVED*** ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

***REMOVED*** Default deploy_to directory is /var/www/my_app_name
***REMOVED*** set :deploy_to, "/var/www/my_app_name"

***REMOVED*** Default value for :format is :airbrussh.
***REMOVED*** set :format, :airbrussh

***REMOVED*** You can configure the Airbrussh format using :format_options.
***REMOVED*** These are the defaults.
***REMOVED*** set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

***REMOVED*** Default value for :pty is false
***REMOVED*** set :pty, true

***REMOVED*** Default value for :linked_files is []
***REMOVED*** append :linked_files, "config/database.yml", "config/secrets.yml"

***REMOVED*** Default value for linked_dirs is []
***REMOVED*** append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

***REMOVED*** Default value for default_env is {}
***REMOVED*** set :default_env, { path: "/opt/ruby/bin:$PATH" }

***REMOVED*** Default value for keep_releases is 5
***REMOVED*** set :keep_releases, 5
