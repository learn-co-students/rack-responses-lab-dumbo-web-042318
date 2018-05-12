# INSTRUCTIONS
# Create your application with the following conditions:
#
# If it's before noon, greet the user with "Good Morning!"
# If it's after noon, greet the user with "Good Afternoon!". Remember that getting the time may return results in 24 hour time! Anytime after 12 is the afternoon.
class Application

  def call(env)
    resp = Rack::Response.new
    time = Time.now
    time = time.strftime('%H:%M')

    if time.to_s >= '12:00' 
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish

  end

end
