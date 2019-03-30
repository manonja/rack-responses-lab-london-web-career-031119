class Application

  def call(env)

  resp = Rack::Response.new

  time = Time.now

  resp.write "#{time} \n"
  #=> 2019-03-30 20:14:16



  if time.hour < 12
    resp.write "Good Morning!"
  else
    resp.write "Good Afternoon!"
  end

  resp.finish

  end
end
