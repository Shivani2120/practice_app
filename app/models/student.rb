class Student < ApplicationRecord
    has_many :teachers
    has_many :course, through: :teachers
    has_many :comments, as: :commentable
    has_many :addresses, inverse_of: :student
    accepts_nested_attributes_for :addresses, reject_if: :all_blank, allow_destroy: true
end
