class CreateTeeColors < ActiveRecord::Migration[7.0]
  def change
    create_table :tee_colors do |t|
      t.string :color

      t.timestamps
    end
  end
end
