class StaticController < ApplicationController
  before_filter :authenticate_user!

  def index
  	@posts = Post.find_by_sql("SELECT * FROM posts")
  end
end
