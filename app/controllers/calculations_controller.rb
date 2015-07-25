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

  @rate = number_to_percentage(params["num1"])
  @years = params["num2"].to_f
  @loan_amount = params["num3"].to_f
@payment=(@rate*@loan_amount)/(1-(1+@rate)**(-@years))
@test= number_to_currency(@rate)
render("payment.html.erb")
end

end
