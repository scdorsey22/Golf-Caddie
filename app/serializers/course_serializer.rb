class CourseSerializer < ActiveModel::Serializer
  attributes :id, :course_name, :tee_colors, :scorecards
end
