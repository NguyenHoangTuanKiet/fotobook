class ArticlesController < ApplicationController

  def index
    @articles = Article.all.page(params[:page]).per(5)
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end

end
