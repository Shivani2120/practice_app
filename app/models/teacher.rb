class Teacher < ApplicationRecord
    has_many :subjects, dependent: :destroy
    has_many :comments, as: :commentable
    belongs_to :student
    belongs_to :course
end
