class PagesController < ApplicationController
  def home
  end

  def categories
  end

  def furniture
  end

  def free_stuff
  end

  def services
    @posts = Post.all
    @services = Post.find_by_category('services')
  end

  def help
  end

  def about
  end

  def contact
  end

  def terms_of_use
  end

  def privacy_policy
  end

  def feedback
  end

  def safety
  end
end
