class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 200} # posts are capped at 200 characters
  
  default_scope -> {order(created_at: :desc)} #Newest post first
  
end
