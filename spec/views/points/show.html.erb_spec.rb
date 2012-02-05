require 'spec_helper'

describe "points/show" do
  before(:each) do
    @point = assign(:point, stub_model(Point,
      :user_id => 1,
      :question_id => 1,
      :correct_answer => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
