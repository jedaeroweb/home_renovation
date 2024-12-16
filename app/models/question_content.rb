class QuestionContent < ApplicationRecord
  belongs_to :question, :foreign_key => :id, inverse_of: :question_content
  validates_presence_of :content
end
