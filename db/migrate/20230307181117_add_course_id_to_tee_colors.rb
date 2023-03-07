class AddCourseIdToTeeColors < ActiveRecord::Migration[7.0]
  def change
    add_reference :tee_colors, :course, null: false, foreign_key: true
  end
end
