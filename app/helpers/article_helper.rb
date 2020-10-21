# frozen_string_literal: true

module ArticleHelper
  def article_cover_url(article)
    article.cover.attached? ? url_for(article.cover) : url_for('defaults/cover.jpg')
  end
end
