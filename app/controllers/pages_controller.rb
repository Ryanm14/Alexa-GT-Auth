class PagesController < ApplicationController
  def home
  end
  
  def show
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @tests = []
    Test.includes(:tabs).each do |test| 
      if test.teacher_first_name == @first_name && test.teacher_last_name == @last_name
        @tests << test
      end
    end
  end
    
end