class PagesController < ApplicationController
  def about
      @title   = 'About us'
      @content  = 'this Simple To do App for Schedual you Tasks and Example for Creating Crud app in rails'
      @ruby_v  = RUBY_DESCRIPTION 
  end
end
