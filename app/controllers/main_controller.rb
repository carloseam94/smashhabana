class MainController < ApplicationController
  def show
    @articles = Article.where('STATUS = ? AND IS_PINNED != ?', Article::PUBLISHED, Article::PINNED)
    @pinned_articles = Article.where('STATUS = ? AND IS_PINNED = ?', Article::PUBLISHED, Article::PINNED)
  end
end




