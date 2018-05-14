class Application
  def call(env)
    resp = Rack::Response.new
    currentHour = Time.now.hour;
    if currentHour < 12
      resp.write "Good Morning!"
    else currentHour > 12
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
