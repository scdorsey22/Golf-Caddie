class Scorecard < ApplicationRecord
    belongs_to :course
    belongs_to :tee_color
end
