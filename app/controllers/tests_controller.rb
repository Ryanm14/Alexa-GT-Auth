class TestsController < ApplicationController
  def create
    @test = Test.create(test_params)
    
    
    json =  JSON.parse(request.raw_post)
    json["tab_outs"].each do |length|
      @test.tabs << Tab.new(length)
    end
    
  end
  
  private
    # To collect data from form, we need to use strong paramaters
    # and whitelist the form fields
    def test_params
      params.require(:test).permit(:teacher_first_name, :teacher_last_name, :student_first_name, :student_last_name)
    end
end

