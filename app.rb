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
  @num = number.to_f
  @result = (@num * @num).to_f
  erb(:squares_res)
end

get("/square_root/new") do
  erb(:square_root)
end

get("/square_root/results") do
  number = params[:number]
  @num = number.to_f
  @result = Math.sqrt(@num)
  erb(:square_root_res)
end

get("/payment/new") do
  erb(:payment)
end

get("/payment/results") do
  @apr = params[:apr]
  @years = params[:years].to_i
  @principal = params[:principal].to_f
  r = @apr.to_f
  n = @years*12
  @pv = @principal.round(2).to_fs(:currency)
  @r_percentage= r.round(4)
  @numerator = r*@principal/(100*12)
  @denominator = (1-((1+r)**(-n)))
  @pmt = (@numerator/@denominator).round(2).to_fs(:currency)
  erb(:payment_res)
end


get("/random/new") do
  erb(:random)
end

get("/random/results") do
  @min = params[:min].to_f
  @max = params[:max].to_f
  @rand = rand(@min..@max)
  erb(:random_res)
end
