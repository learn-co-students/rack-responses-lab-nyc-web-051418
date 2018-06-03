class Application

  def call(env)
    resp = Rack::Response.new

    time_now = Time.now.hour
    if time_now.between?(1, 12)
      resp.write "Good Morning!"
      else
        resp.write "Good Afternoon!"
      end
    resp.finish

  end
end
