class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers

  # maybe order by update timestamp (in case of question edit)
  default_scope -> { order('created_at DESC') }
end
