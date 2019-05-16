class Question < ApplicationRecord
  belongs_to :enqueue
  has_many :question
end
