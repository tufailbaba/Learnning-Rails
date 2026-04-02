Student.create(
    first_name: "Tufail",
    last_name: "Baba",
    email: "tufaiilbaba@gmail.com",
)
20.times do |i|
    Student.create(
        first_name: "Student#{i+1}",
        last_name: "LastName#{i+1}",
        email: "student#{i+1}@example.com",
    )
end
Student.all.each do |student|
  student.blogs.create(
    title: "Dummy Blog for student #{student.id}",
    content: "Custom content Pending")
   student.blogs.create(
    title: "Dummy Blog for student #{student.id}",
    content: "Custom content Pending")
end
