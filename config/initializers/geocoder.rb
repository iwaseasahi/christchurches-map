if Rails.env.test?
  Geocoder.configure(lookup: :test, ip_lookup: :test)
else
  Geocoder.configure(
    ***REMOVED*** Geocoding options
    timeout: 5,                   ***REMOVED*** geocoding service timeout (secs)
    lookup: :google,              ***REMOVED*** name of geocoding service (symbol)
    ***REMOVED*** ip_lookup: :ipinfo_io,      ***REMOVED*** name of IP address geocoding service (symbol)
    language: :ja,                ***REMOVED*** ISO-639 language code
    ***REMOVED*** use_https: false,           ***REMOVED*** use HTTPS for lookup requests? (if supported)
    ***REMOVED*** http_proxy: nil,            ***REMOVED*** HTTP proxy server (user:pass@host:port)
    ***REMOVED*** https_proxy: nil,           ***REMOVED*** HTTPS proxy server (user:pass@host:port)
    api_key: Rails.application.credentials.dig(:geocoder, :api_key), ***REMOVED*** API key for geocoding service
    ***REMOVED*** cache: nil,                 ***REMOVED*** cache object (must respond to ***REMOVED***[], ***REMOVED***[]=, and ***REMOVED***del)
    ***REMOVED*** cache_prefix: 'geocoder:',  ***REMOVED*** prefix (string) to use for all cache keys

    ***REMOVED*** Exceptions that should not be rescued by default
    ***REMOVED*** (if you want to implement custom error handling);
    ***REMOVED*** supports SocketError and Timeout::Error
    ***REMOVED*** always_raise: [],

    ***REMOVED*** Calculation options
    units: :km,                   ***REMOVED*** :km for kilometers or :mi for miles
    ***REMOVED*** distances: :linear          ***REMOVED*** :spherical or :linear
    )
end
