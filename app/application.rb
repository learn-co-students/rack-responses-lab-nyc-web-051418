class Application
  def call(env)
    resp = Rack::Response.new
    curr_time = Time.now
    noon = Time.parse("12:00 PM")
    if curr_time < noon
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
