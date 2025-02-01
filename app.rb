require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square)
end

get("/:function/new") do
  @function = params.fetch("function")
  function_sym = @function.to_sym
  erb(function_sym)
  # add form to each function's erb
end

get("/square/results") do
  # logic for calculations
  # store array for things to print
  # erb result
end

get("/square_root/results") do
  # logic for calculations
  # store array for things to print
  # erb result
end

get("/square_root/results") do
  # logic for calculations
  # store array for things to print
  # erb result
end

get("/payment/results") do
  # logic for calculations
  # store array for things to print
  # erb result
end

get("/random/results") do
  # logic for calculations
  # store array for things to print
  # erb result
end

=begin
get("/square_root/new") do
  erb(:square_root)
end

get("/square/new") do
  erb(:square)
end

get("/payment/new") do
  erb(:payment)
end

get("/payment/new") do
  erb(:payment)
end
=end
