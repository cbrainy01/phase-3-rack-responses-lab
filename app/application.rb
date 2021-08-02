class Application
   def call(env)
    resp = Rack::Response.new
        time = Time.now
        if time.hour >= 12
            resp.write "Good Afternoon!"
        elsif time.hour < 12 
            resp.write "Good Morning!"
        end
    resp.finish
   end

end
 

# def call(env)
#         return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]
#       end
    
#       def pretty_response
#         (Time.now.to_i % 2).zero? ?  ["<em>Good Morning!</em>"] : ["<strong>Good Afternoon!</strong>"]
# end