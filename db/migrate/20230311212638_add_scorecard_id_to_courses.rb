class AddScorecardIdToCourses < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :scorecard_id, :integer
  end
end
