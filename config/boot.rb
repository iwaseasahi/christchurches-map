ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

require 'bundler/setup' ***REMOVED*** Set up gems listed in the Gemfile.
require 'bootsnap/setup' ***REMOVED*** Speed up boot time by caching expensive operations.
