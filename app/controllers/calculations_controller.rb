class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

def square_root

  @num = params["num1"]
@square = Math.sqrt(@num.to_f)
render("square_root.html.erb")
end

def random

  @num = params["num1"]
  @num2 = params["num2"]
  @rand = rand(51)+50
render("random.html.erb")
end

def payment

  @rate = params["num1"].to_f/1000
  @years = params["num2"].to_i
  @loan_amount = params["num3"].to_i
@payment=(@rate*@loan_amount)/(1-(1+@rate)**(-@years))
render("payment.html.erb")
end

end
