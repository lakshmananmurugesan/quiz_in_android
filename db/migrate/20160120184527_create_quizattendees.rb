class CreateQuizattendees < ActiveRecord::Migration
  def self.up
    create_table :quizattendees do |t|
      t.string :name
      t.string :college_name
      t.string :department
      t.string :current_year
      t.string :year_passed_out
      t.string :phone
      t.string :email
      t.string :native_place
      t.string :workshop_feedback

      t.timestamps
    end
  end

  def self.down
    drop_table :quizattendees
  end
end
