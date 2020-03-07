class CalcsController < ApplicationController
  def show
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    calc = params[:calc]

    @result = if calc == "addtion"
                number1 + number2
              elsif calc == "subtraction"
                number1 - number2
              elsif calc == "multiiplication"
                number1 * number2
              elsif calc == "division"
                number1 / number2
              else
                "計算できません"
              end
    end
end
