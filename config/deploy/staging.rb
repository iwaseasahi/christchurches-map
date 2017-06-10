***REMOVED*** server-based syntax
***REMOVED*** ======================
***REMOVED*** Defines a single server with a list of roles and multiple properties.
***REMOVED*** You can define all roles on a single server, or split them:

***REMOVED*** server "example.com", user: "deploy", roles: %w{app db web}, my_property: :my_value
***REMOVED*** server "example.com", user: "deploy", roles: %w{app web}, other_property: :other_value
***REMOVED*** server "db.example.com", user: "deploy", roles: %w{db}



***REMOVED*** role-based syntax
***REMOVED*** ==================

***REMOVED*** Defines a role with one or multiple servers. The primary server in each
***REMOVED*** group is considered to be the first unless any hosts have the primary
***REMOVED*** property set. Specify the username and a domain or IP for the server.
***REMOVED*** Don't use `:all`, it's a meta role.

***REMOVED*** role :app, %w{deploy@example.com}, my_property: :my_value
***REMOVED*** role :web, %w{user1@primary.com user2@additional.com}, other_property: :other_value
***REMOVED*** role :db,  %w{deploy@example.com}



***REMOVED*** Configuration
***REMOVED*** =============
***REMOVED*** You can set any configuration variable like in config/deploy.rb
***REMOVED*** These variables are then only loaded and set in this stage.
***REMOVED*** For available Capistrano configuration variables see the documentation page.
***REMOVED*** http://capistranorb.com/documentation/getting-started/configuration/
***REMOVED*** Feel free to add new variables to customise your setup.



***REMOVED*** Custom SSH Options
***REMOVED*** ==================
***REMOVED*** You may pass any option but keep in mind that net/ssh understands a
***REMOVED*** limited set of options, consult the Net::SSH documentation.
***REMOVED*** http://net-ssh.github.io/net-ssh/classes/Net/SSH.html***REMOVED***method-c-start
***REMOVED***
***REMOVED*** Global options
***REMOVED*** --------------
***REMOVED***  set :ssh_options, {
***REMOVED***    keys: %w(/home/rlisowski/.ssh/id_rsa),
***REMOVED***    forward_agent: false,
***REMOVED***    auth_methods: %w(password)
***REMOVED***  }
***REMOVED***
***REMOVED*** The server-based syntax can be used to override options:
***REMOVED*** ------------------------------------
***REMOVED*** server "example.com",
***REMOVED***   user: "user_name",
***REMOVED***   roles: %w{web app},
***REMOVED***   ssh_options: {
***REMOVED***     user: "user_name", ***REMOVED*** overrides user setting above
***REMOVED***     keys: %w(/home/user_name/.ssh/id_rsa),
***REMOVED***     forward_agent: false,
***REMOVED***     auth_methods: %w(publickey password)
***REMOVED***     ***REMOVED*** password: "please use keys"
***REMOVED***   }
