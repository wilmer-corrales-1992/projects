class PagesController < ApplicationController
  def contact
  end

  def about
    @title = "My cool title"
  end

  def home
    @projects = Project.all
  end
  
  def error
    
  end
end
