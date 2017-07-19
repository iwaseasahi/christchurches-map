***REMOVED*** Load DSL and set up stages
require "capistrano/setup"

***REMOVED*** Include default deployment tasks
require "capistrano/deploy"

***REMOVED*** Load the SCM plugin appropriate to your project:
***REMOVED***
***REMOVED*** require "capistrano/scm/hg"
***REMOVED*** install_plugin Capistrano::SCM::Hg
***REMOVED*** or
***REMOVED*** require "capistrano/scm/svn"
***REMOVED*** install_plugin Capistrano::SCM::Svn
***REMOVED*** or
require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git

***REMOVED*** Include tasks from other gems included in your Gemfile
***REMOVED***
***REMOVED*** For documentation on these, see for example:
***REMOVED***
***REMOVED***   https://github.com/capistrano/rvm
***REMOVED***   https://github.com/capistrano/rbenv
***REMOVED***   https://github.com/capistrano/chruby
***REMOVED***   https://github.com/capistrano/bundler
***REMOVED***   https://github.com/capistrano/rails
***REMOVED***   https://github.com/capistrano/passenger
***REMOVED***
***REMOVED*** require "capistrano/rvm"
require "capistrano/rbenv"
***REMOVED*** require "capistrano/chruby"
require "capistrano/bundler"
require "capistrano/rails/assets"
require "capistrano/rails/migrations"
***REMOVED*** require "capistrano/passenger"
require 'capistrano3/unicorn'
require 'capistrano/sidekiq'

***REMOVED*** Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
