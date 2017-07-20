***REMOVED*** config valid only for current version of Capistrano
lock "3.8.1"

set :application, "christchurches-map"
set :repo_url, "git@github.com:iwaseasahi/christchurches-map.git"

***REMOVED*** Default branch is :master
set :branch, 'master'
***REMOVED*** ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

***REMOVED*** Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/var/www/projects/christchurches-map"

***REMOVED*** Default value for :format is :airbrussh.
***REMOVED*** set :format, :airbrussh

***REMOVED*** You can configure the Airbrussh format using :format_options.
***REMOVED*** These are the defaults.
***REMOVED*** set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

***REMOVED*** Default value for :pty is false
set :pty, true

***REMOVED*** Default value for :linked_files is []
***REMOVED*** set :linked_files, fetch(:linked_files, []).push('config/settings/production.yml')
***REMOVED*** append :linked_files, "config/database.yml", "config/secrets.yml"
set :linked_files, fetch(:linked_files, []).push('.env')

***REMOVED*** Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')
***REMOVED*** append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

***REMOVED*** Default value for default_env is {}
***REMOVED*** set :default_env, { path: "/opt/ruby/bin:$PATH" }

***REMOVED*** Default value for keep_releases is 5
set :keep_releases, 5

***REMOVED*** rubyのバージョン
set :rbenv_ruby, '2.3.1'

***REMOVED*** Sidekiq
***REMOVED*** NOTE: https://github.com/seuros/capistrano-sidekiq/issues/124
set :rbenv_map_bins, %w{rake gem bundle ruby rails sidekiq sidekiqctl}

namespace :deploy do
  desc 'Restart application'
  task :restart do
    invoke 'unicorn:restart'
  end
  desc 'Create database'
  task :db_create do
    on roles(:db) do |host|
      with rails_env: fetch(:rails_env) do
        within current_path do
          execute :bundle, :exec, :rake, 'db:create'
        end
      end
    end
  end
  desc 'Run seed'
  task :seed do
    on roles(:app) do
      with rails_env: fetch(:rails_env) do
        within current_path do
          execute :bundle, :exec, :rake, 'db:seed'
        end
      end
    end
  end
  after :publishing, :restart
  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      ***REMOVED*** Here we can do anything such as:
      ***REMOVED*** within release_path do
      ***REMOVED***   execute :rake, 'cache:clear'
      ***REMOVED*** end
    end
  end
end
