require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:squares)
end

get("/square/new") do
   erb(:squares)
end

get("/squares/results") do
  number = params[:number]
  @num = number.to_i
  @result = (@num * @num).to_f
  erb(:squares_res)
end

get("/square_root/new") do
  erb(:square_root)
end

get("/square_root/results") do
  number = params[:number]
  @num = number.to_i
  @result = Math.sqrt(@num)
  erb(:square_root_res)
end

get("/payment/new") do
  erb(:payment)
end

get("/payment/results") do
  @apr = params[:apr]
  @years = params[:years]
  @principal = params[:principal]
  r = @apr.to_f/(100*12)
  n = @years.to_i*12
  pv = @principal.to_i
  @numerator = r*pv
  @denominator = (1+r)**(-n)
  @pmt = @numerator/@denominator
  erb(:payment_res)
end


get("/random/new") do
  erb(:random)
end
