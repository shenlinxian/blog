class StaticPagesController < ApplicationController

  def home
    if signed_in?
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
