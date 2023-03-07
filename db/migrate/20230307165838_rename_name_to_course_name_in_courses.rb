class RenameNameToCourseNameInCourses < ActiveRecord::Migration[7.0]
  def change
    rename_column :courses, :name, :course_name
  end
end
