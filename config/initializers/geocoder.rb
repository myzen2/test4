#Geocoder.configure(
  # geocoding options
  # :timeout      => 3,           # geocoding service timeout (secs)
  #:lookup       => :dstk, host: "localhost:4567"     # name of geocoding service (symbol)
  # :language     => :fr,
  #:use_https    => true,       # use HTTPS for lookup requests? (if supported)
  # :http_proxy   => nil,         # HTTP proxy server (user:pass@host:port)
  # :https_proxy  => nil,         # HTTPS proxy server (user:pass@host:port)
  # :api_key      => nil,         # API key for geocoding service
  # :cache        => nil,         # cache object (must respond to #[], #[]=, and #keys)
  # :cache_prefix => "geocoder:", # prefix (string) to use for all cache keys

  # exceptions that should not be rescued by default
  # (if you want to implement custom error handling);
  # supports SocketError and TimeoutError
  # :always_raise => [],

  # calculation options
  #:units     => :km,
  # :km for kilometers or :mi for miles
  # :distances => :linear    # :spherical or :linear
#)
Geocoder.configure do |config|
#  config.lookup = :dstk
#  config.host = "localhost:4567"
  config.lookup = :google
  config.api_key = ENV[Google_API_KEY] 
  config.language = :fr
  config.timeout = 5
  config.units = :km
end
