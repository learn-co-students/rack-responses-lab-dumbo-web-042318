class Application

    def call(env)
      resp = Rack::Response.new
      num = (0..12)

   if (0..12).include? (Time.now.hour)
     resp.write "Good Morning"
   else
     resp.write "Good Afternoon"
   end 
      resp.finish
    end
end
