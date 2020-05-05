require "sinatra"
require "sinatra/reloader"

get "/" do
  "Hi"
end

get "/contact" do
  "Contact"
end

get "/careers" do
  "Careers"
end

get "/faq" do
  erb :faq
end

get "/project/:id" do
  "#{params}"
end

get "/company/:id_company/employee/:id_employee" do
  "#{params}"
end

post "/signup" do
  restult = "First name is: #{params["first_name"]} \n"
  restult += "Last name is: #{params["provided last_name"]} \n"
  restult += "Email is: #{params["provided last_name"]} \n"
  restult += "Password is: xxxx (is secret!)\n" 
end

get "/signup" do
  erb :signup
end

get "/nosotros" do
  redirect url("/us"), 303
end

get "/us" do
  "US"
end