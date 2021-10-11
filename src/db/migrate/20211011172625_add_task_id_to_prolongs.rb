class AddTaskIdToProlongs < ActiveRecord::Migration[6.1]
  def change
    add_reference :prolongs, :task, foreign_key: true
  end
end
