class QuizAttendeesController < ApplicationController

  def index
    @quiz_attendees = Quizattendees.all
  end

  def new
    @quiz_attendees = Quizattendees.new
  end

  def create
  @quiz_attendees = Quizattendees.new(params[:quizattendees])

  emailValue = @quiz_attendees.email
  nameValue = @quiz_attendees.name

  respond_to do |format|
    if @quiz_attendees.save
      UserMailer.attendee_confirmation(@quiz_attendees).deliver
      format.html { redirect_to("/quiz/index?email=#{emailValue}&name=#{nameValue}")}
      format.xml  { render :xml => @question, :status => :created, :location => @question }
    else
      format.html { render :action => "new" }
      format.xml  { render :xml => @quiz_attendees, :status => :unprocessable_entity }
    end
  end
  end

end