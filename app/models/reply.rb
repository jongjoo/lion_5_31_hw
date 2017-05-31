class Reply < ActiveRecord::Base
    validates :comment, presence: {message: "다시입력하세요"}
    belongs_to :post
end
