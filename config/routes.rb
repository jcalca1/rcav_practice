Rails.application.routes.draw do
  get("/instructions", { :controller => "calculations", :action => "instructions" })
 get("/square_root/:num1", { :controller => "calculations", :action => "square_root" })
get("/random/:num1/:num2", { :controller => "calculations", :action => "random" })
get("/payment/:num1/:num2/:num3", { :controller => "calculations", :action => "payment" })
end
