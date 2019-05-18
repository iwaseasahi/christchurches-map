guard :rspec, cmd: 'bundle exec rspec' do
  require 'guard/rspec/dsl'
  dsl = Guard::RSpec::Dsl.new(self)

  ***REMOVED*** Feel free to open issues for suggestions and improvements

  ***REMOVED*** RSpec files
  rspec = dsl.rspec
  watch(rspec.spec_helper) { rspec.spec_dir }
  watch(rspec.spec_support) { rspec.spec_dir }
  watch(rspec.spec_files)

  ***REMOVED*** Ruby files
  ruby = dsl.ruby
  dsl.watch_spec_files_for(ruby.lib_files)

  ***REMOVED*** Rails files
  rails = dsl.rails(view_extensions: %w(erb haml slim))
  dsl.watch_spec_files_for(rails.app_files)
  dsl.watch_spec_files_for(rails.views)

  watch(rails.controllers) do |m|
    [
      rspec.spec.("routing/***REMOVED***{m[1]}_routing"),
      rspec.spec.("controllers/***REMOVED***{m[1]}_controller"),
      rspec.spec.("acceptance/***REMOVED***{m[1]}")
    ]
  end

  ***REMOVED*** Rails config changes
  watch(rails.spec_helper)     { rspec.spec_dir }
  watch(rails.routes)          { "***REMOVED***{rspec.spec_dir}/routing" }
  watch(rails.app_controller)  { "***REMOVED***{rspec.spec_dir}/controllers" }

  ***REMOVED*** Capybara features specs
  watch(rails.view_dirs)     { |m| rspec.spec.("features/***REMOVED***{m[1]}") }

  ***REMOVED*** Turnip features and steps
  watch(%r{^spec/acceptance/(.+)\.feature$})
  watch(%r{^spec/acceptance/steps/(.+)_steps\.rb$}) do |m|
    Dir[File.join("**/***REMOVED***{m[1]}.feature")][0] || 'spec/acceptance'
  end
end