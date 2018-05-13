# If it's before noon, greet the user with "Good Morning!"
# If it's after noon, greet the user with "Good Afternoon!". Remember that getting the time may return results in 24 hour time! Anytime after 12 is the afternoon.


class Application
  def call(env)
    resp = Rack::Response.new
 
    time = Time.now.hour 

    case time 
      when 0..12
        resp.write "Good Morning!"
      when 13..23
        resp.write "Good Afternoon!"
    end 
    resp.finish
  end

end


