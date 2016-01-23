class Quizattendees < ActiveRecord::Base
  validates :name, :presence => true
  validates :college_name, :presence => true
  validates :department, :presence => true
  validates :current_year, :presence => true
  validates :year_passed_out, :presence => true
  validates :phone, :presence => true,:numericality => true, :length => { :minimum => 10, :maximum => 13 }, :uniqueness => true
  validates :email, :presence => true, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }, :uniqueness => true
  validates :native_place, :presence => true
  validates :workshop_feedback, :presence => true
end
