# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# puts 'Creating todos...'

# # 適当なTodoを5つ作成
# 5.times do |i|
#   Task.create(title: "Task#{i + 1}", user_id: i + 1)
# end

# puts '...Finished!'


# 5.times do |i|
#     Prolong.create(lange: "lange#{i + 1}", task_id:21)
#   end
  
#   5.times do |i|
#     Tool.create(name: "lange#{i + 1}", task_id:21)
#   end


#   puts '...Finished!'

  5.times do |i|
    Content.create(title: "lange#{i + 1}", text: "test#{i + 1}",task_id:21)
  end
  

  5.times do |i|
    Comment.create(point: 3, text: "test#{i + 1}", user_id:2 ,task_id:21)
  end


#   puts '...Finished!'

#   5.times do |i|
#     UproLang.create(lang:"vue", user_id:1)
#   end

  # 15.times do |i|
  #   Like.create(user_id:i + 1, task_id: 5)
  # end

  # puts '...Finished!'
