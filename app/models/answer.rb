class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question

  default_scope -> { order('updated_at ASC') }
end
