class Course < ApplicationRecord
    has_many :tee_colors
    has_many :scorecards
end
