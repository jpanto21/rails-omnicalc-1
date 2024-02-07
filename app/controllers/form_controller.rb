class FormController < ApplicationController


  def square 

    render( template: "templates/square_form" )
  end

  def square_root

    render( template: "templates/square_root_form" )
    end

  def payment

      render( template: "templates/payment_form" )
  end
  
  def random 

    render( template: "templates/random_form" )
  end
  

end
