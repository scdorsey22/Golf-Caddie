class CreateScorecards < ActiveRecord::Migration[7.0]
  def change
    create_table :scorecards do |t|
      t.string :course_name
      t.string :tee_color
      t.integer :hole_number
      t.integer :par
      t.integer :handicap
      t.integer :yardage
      t.float :course_rating
      t.integer :slope_rating

      t.timestamps
    end
  end
end
