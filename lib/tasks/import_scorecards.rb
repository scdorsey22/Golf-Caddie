# require 'csv'

# desc "Import scorecards from CSV file"
# task :import_scorecards => :environment do
#   file = '/Users/sugashane/Development/code/Golf-Caddie/lib/csx/Sheet1.csv'

#   CSV.foreach(file, headers: true) do |row|
#     course = Course.find_or_create_by(course_name: row['Course Name'])
#     tee_color = TeeColor.find_or_create_by(color: row['Tee Color'], course: course)

#     scorecard = Scorecard.new(
#       course_name: row["Course Name"],
#       tee_color: row["Tee Color"],
#       hole_number: row["Hole Number"],
#       par: row["Par"],
#       handicap: row["Handicap"],
#       yardage: row["Yardage"],
#       course_rating: row["Course Rating"],
#       slope_rating: row["Slope Rating"],
#       course: course,
#       tee_color: tee_color
#     )

#     if scorecard.save
#       puts "Scorecard created!"
#     else
#       puts "Error creating scorecard: #{scorecard.errors.full_messages}"
#     end
#   end
# end

