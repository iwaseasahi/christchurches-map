Config.setup do |config|
  ***REMOVED*** Name of the constant exposing loaded settings
  config.const_name = 'Settings'

  ***REMOVED*** Ability to remove elements of the array set in earlier loaded settings file. For example value: '--'.
  ***REMOVED***
  ***REMOVED*** config.knockout_prefix = nil

  ***REMOVED*** Overwrite arrays found in previously loaded settings file. When set to `false`, arrays will be merged.
  ***REMOVED***
  ***REMOVED*** config.overwrite_arrays = true

  ***REMOVED*** Load environment variables from the `ENV` object and override any settings defined in files.
  ***REMOVED***
  ***REMOVED*** config.use_env = false

  ***REMOVED*** Define ENV variable prefix deciding which variables to load into config.
  ***REMOVED***
  ***REMOVED*** config.env_prefix = 'Settings'

  ***REMOVED*** What string to use as level separator for settings loaded from ENV variables. Default value of '.' works well
  ***REMOVED*** with Heroku, but you might want to change it for example for '__' to easy override settings from command line, where
  ***REMOVED*** using dots in variable names might not be allowed (eg. Bash).
  ***REMOVED***
  ***REMOVED*** config.env_separator = '.'

  ***REMOVED*** Ability to process variables names:
  ***REMOVED***   * nil  - no change
  ***REMOVED***   * :downcase - convert to lower case
  ***REMOVED***
  ***REMOVED*** config.env_converter = :downcase

  ***REMOVED*** Parse numeric values as integers instead of strings.
  ***REMOVED***
  ***REMOVED*** config.env_parse_values = true
end
