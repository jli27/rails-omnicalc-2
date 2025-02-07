class SubtractionController < ApplicationController
  def subtraction_form
    render({ :template => "subtraction_templates/subtraction_form" })
  end

  def subtract_these
    @first_number = params.fetch("FirstNum").to_f
    @second_number = params.fetch("SecondNum").to_f

    @result =  @second_number - @first_number

    render({ :template => "subtraction_templates/sub_results" })
  end
end
