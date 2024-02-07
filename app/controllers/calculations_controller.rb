class CalculationsController < ApplicationController


  def square 
    @number = params.fetch("number").to_f
    @result = @number ** 2
 
    render( template: "templates/square_results" )
  end

  def square_root
    @number = params.fetch("number").to_f
    @result = @number ** 0.5

    render( template: "templates/square_root_results" )
  end

  def payment
    @apr= params.fetch("user_apr").to_f
    @r = (@apr/100) / 12
    @years = params.fetch("user_years").to_i
    @n = @years * 12
    @principal = params.fetch("user_pv").to_f
  
    @numerator = @r * @principal
    @denominator = 1- (1 + @r) ** -@n

    @result = @numerator/@denominator

    render( template: "templates/payment_results" )
  end
  
  def random 
    @number1 = params.fetch("user_min").to_f
    @number2 = params.fetch("user_max").to_f

    @result =rand(@number1..@number2)

    render( template: "templates/random_results" )
  end
  

end
