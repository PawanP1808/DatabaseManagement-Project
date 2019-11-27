class DbController<ApplicationController

  def home
  response = Excon.get("https://api.openweathermap.org/data/2.5/weather?q=oshawa&appid=b81347c5672e23b4e026a7533d499673")
   return nil if response.status != 200
   @weather = JSON.parse(response.body)
  end



end
