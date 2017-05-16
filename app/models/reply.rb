class Reply < ActiveRecord::Base
    validates :comment, presence: true
    belongs_to :post
end
