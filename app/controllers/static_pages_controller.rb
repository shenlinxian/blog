class StaticPagesController < ApplicationController

  def home
    if signed_in?
      @passages = Passage.all

    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
