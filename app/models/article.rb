class Article < ApplicationRecord
    belongs_to :user
    has_one_attached :cover

    #status
    PUBLISHED = 'p'
    UNPUBLISHED = 'u'

    #type
    PINNED = 'p'
    UNPINNED ='u'

    #category
    NEWS = 'n'
    DISCUSSION = 'd'

    def to_param
      seo_id
    end

end
