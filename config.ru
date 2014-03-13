require './web'

# Rack::Handler::constants => [:CGI, :FastCGI,
#:Mongrel, :EventedMongrel, :SwiftipliedMongrel,
#:WEBrick, :LSWS, :SCGI, :Thin]

Rack::Server.start(:app => Sinatra::Application, 
                   :server => 'Puma',
                   :Port => '9292',
                   :Host => '0.0.0.0'
                  )
