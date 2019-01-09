class StaticPagesController < ApplicationController

  def home
    if logged_in?
      @articals = Artical.all
    end

  end

  def help
  end

  def about
  end

  def contact
  end
end
