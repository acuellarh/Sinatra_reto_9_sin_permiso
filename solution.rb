require 'sinatra'
#require 'pp'  # Pretty print

get '/' do
  #puts 'Value of header HTTP_PERMISO:'
  #puts request.env.class  ## muestra la clase de ese request, paa este caso la clase hash
  #puts request.env['HTTP_PERMISO']
  value = request.env['HTTP_PERMISO'].to_s
  key = "soy-un-token-secreto"
  grant = "Si lo logramos!"
  not_grant = "Sin Permiso"
    if value == key
      grant
    else  
      puts not_grant
      not_grant      
    end  
  
  #pp request.env
  #'User agent: ' + request.env['HTTP_USER_AGENT']
  
end

# require 'sinatra'

# get '/' do
#   logger.info 'Informational log'
#   logger.warn 'Warning log'
#   logger.error 'Error!'
#   logger.debug 'Debug message'
# end


# get '/' do
#   puts headers
#   headers "My-Header" => "My Data"
#   puts headers
#   headers "My-Header" => "Overriden.", "Extra-Header" => "Data..."
#   puts headers
#   'Done'
# end

# get '/' do
#   headers['permiso'] = "soy-un-token-secreto"
#   headers['Cache-Control'] = 'public, max-age=600'
#   #puts headers # show headers on this request
# end

# get '/' do

# erb :index
# end



