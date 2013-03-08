class Micropost < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user

  validates :user_id, presence: true

  default_scope order: 'micropost.created_at DESC'

end
