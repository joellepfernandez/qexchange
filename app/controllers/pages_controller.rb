class PagesController < ApplicationController
  def home
    @posts = Post.all
    @post = Post.new
  end

  def index
    @posts = Post.all
    @post = Post.new
  end

  def categories
  end

  def furniture
    @posts = Post.all
    @furniture = Post.find_by_category('furniture')
  end

  def free_stuff
    @posts = Post.all
    @free_stuff = Post.find_by_category('free stuff')
  end

  def services
    @posts = Post.all
    @services = Post.find_by_category('services')
  end

  def meet_ups
    @posts = Post.all
    @meet_ups = Post.find_by_category('meet ups')
  end

  def jobs
    @posts = Post.all
    @jobs = Post.find_by_category('jobs')
  end

  def housing
    @posts = Post.all
    @housing = Post.find_by_category('housing')
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
