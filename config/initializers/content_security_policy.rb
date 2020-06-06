***REMOVED*** Be sure to restart your server when you modify this file.

***REMOVED*** Define an application-wide content security policy
***REMOVED*** For further information see the following documentation
***REMOVED*** https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy

***REMOVED*** Rails.application.config.content_security_policy do |policy|
***REMOVED***   policy.default_src :self, :https
***REMOVED***   policy.font_src    :self, :https, :data
***REMOVED***   policy.img_src     :self, :https, :data
***REMOVED***   policy.object_src  :none
***REMOVED***   policy.script_src  :self, :https
***REMOVED***   policy.style_src   :self, :https

***REMOVED***   ***REMOVED*** Specify URI for violation reports
***REMOVED***   ***REMOVED*** policy.report_uri "/csp-violation-report-endpoint"
***REMOVED*** end

***REMOVED*** If you are using UJS then enable automatic nonce generation
***REMOVED*** Rails.application.config.content_security_policy_nonce_generator = -> request { SecureRandom.base64(16) }

***REMOVED*** Set the nonce only to specific directives
***REMOVED*** Rails.application.config.content_security_policy_nonce_directives = %w(script-src)

***REMOVED*** Report CSP violations to a specified URI
***REMOVED*** For further information see the following documentation:
***REMOVED*** https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy-Report-Only
***REMOVED*** Rails.application.config.content_security_policy_report_only = true
