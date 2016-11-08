class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
    @number = params[:number]
    @num_squared = @number.to_i ** 2
  end

  def square_root
    @number = params[:number]
    @num_sqroot = @number.to_i ** 0.5
  end

  def random
    @min = params[:min]
    @max = params[:max]
    @random = (@min..@max).to_a.sample
  end

  def payment
    @interest_rate = params[:interest_rate].to_f
    @apr = @interest_rate / 100
    @num_years = params[:num_years].to_i
    @principal_value = params[:principal_value].to_f
    @mpr = @apr/12/100
    @months = @num_years * 12
    @monthly_payment = (@mpr * @principal_value * ((1 + @mpr) ** @months)) / (((1 + @mpr) ** @months) - 1)


  end
end
