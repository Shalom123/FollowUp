json.array!(@attendences) do |attendence|
  json.extract! attendence, :id, :lecturer_id, :student_id, :course_id, :room_number
  json.url attendence_url(attendence, format: :json)
end
