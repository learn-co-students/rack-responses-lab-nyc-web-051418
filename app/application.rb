class Application

def call(env)
  resp=Rack::Response.new
  noon=Time.new(2015,11,27,12,0,0)


if Time.now<noon
  resp.write "Good Morning!"
else
  resp.write "Good Afternoon!"
end
  resp.finish

end
end
