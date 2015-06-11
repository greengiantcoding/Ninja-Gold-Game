class NinjaController < ApplicationController
  def index
  end

  def farm
    @randGold = 5+Random.rand(5)
    session[:currentGold] += @randGold
    @gold = @randGold.to_s
      @str = 'You earned ' + @gold + ' at the Farm'
      session[:history].prepend(@str)
      flash[:notes] = @str 
    redirect_to '/ninja/index'
  end

  def cave
      @randGold = 1+Random.rand(5)
      session[:currentGold] += @randGold
      @gold = @randGold.to_s
      @str = 'You earned ' + @gold + ' at the Cave'
      session[:history].prepend(@str)
      flash[:notes] = @str 
        redirect_to '/ninja/index'
  end

  def house
      @randGold = 3+Random.rand(2)
      session[:currentGold] += @randGold
      @gold = @randGold.to_s
      @str = 'You earned ' + @gold + ' at the House'
      session[:history].prepend(@str)
      flash[:notes] = @str 
        redirect_to '/ninja/index'
  end

  def casino
      @randGold = -50+Random.rand(100)
      session[:currentGold] += @randGold
      @gold = @randGold.to_s
      @str = 'You left with ' + @gold + ' from the Casino'
      session[:history].prepend(@str)
      flash[:notes] = @str 
        redirect_to '/ninja/index'
  end

  def reset
    session[:currentGold] = 0
    session[:history] = []
    flash[:notes] = 'You Have Reset The Ninjas Gold'
    redirect_to '/ninja/index'
  end

end
