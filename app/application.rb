# If it's before noon, greet the user with "Good Morning!"
# If it's after noon, greet the user with "Good Afternoon!". Remember that getting the time may return results in 24 hour time! Anytime after 12 is the afternoon.


class Application
  def call(env)
    resp = Rack::Response.new
      resp.write (Time.now.hour < 13) ? "Good Morning!" : "Good Afternoon!"
    resp.finish
  end
end


