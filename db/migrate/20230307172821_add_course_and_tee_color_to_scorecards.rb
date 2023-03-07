class AddCourseAndTeeColorToScorecards < ActiveRecord::Migration[7.0]
  def change
    add_reference :scorecards, :course, null: false, foreign_key: true
    add_reference :scorecards, :tee_color, null: false, foreign_key: true
  end
end
