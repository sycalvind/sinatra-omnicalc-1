require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square)
end

get("/:function/new") do
  @function = params.fetch("function")
  function_sym = @function.to_sym
  erb(function_sym)
end

get("/square/results") do
  @function = "square"
  @function_print = "square"
  @number = params.fetch("number")
  @value = @number.to_f
  @result = @value ** 2
  @print_hash = {"Number"=>@number, "Square"=>@result}
  erb(:result)
end

get("/square_root/results") do
  @function = "square_root"
  @function_print = "square root"
  number = params.fetch("user_number")
  result = Math.sqrt(number.to_f)
  @print_hash = {"Number"=>number, "Square Root"=>result}
  erb(:result)
end

get("/payment/results") do
  @function = "payment"
  @function_print = "payment"
  apr = params.fetch("user_apr").to_f
  years = params.fetch("user_years").to_i
  pv = params.fetch("user_pv").to_f
  r = (apr/100) / 12
  n = years * 12
  p = (r * pv)/(1 - (1+r)**(-n))
  @print_hash = {"APR"=>apr.to_fs(:percentage, {:precision=>4}), "Number of years"=>years, "Principal"=>pv.to_fs(:currency), "Payment"=>p.to_fs(:currency)}
  erb(:result)
end

get("/random/results") do
  @function = "random"
  @function_print = "random"
  min = params.fetch("user_min").to_f
  max = params.fetch("user_max").to_f
  result = rand(min..max)
  @print_hash = {"Minimum"=>min, "Maximum"=>max, "Square Root"=>result}
  erb(:result)
end
