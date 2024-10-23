require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:squares)
end

get("/square/new") do
   erb(:squares)
end

get("/square/results") do
  number = params[:number]
  @num = number
  @result = @num * @num
  erb(:squares_res)
end
 

get("/square_root/new") do
  erb(:square_root)
end

get("/payment/new") do
  erb(:payment)
end

get("/random/new") do
  erb(:random)
end
