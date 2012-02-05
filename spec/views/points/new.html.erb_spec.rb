require 'spec_helper'

describe "points/new" do
  before(:each) do
    assign(:point, stub_model(Point,
      :user_id => 1,
      :question_id => 1,
      :correct_answer => 1
    ).as_new_record)
  end

  it "renders new point form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => points_path, :method => "post" do
      assert_select "input#point_user_id", :name => "point[user_id]"
      assert_select "input#point_question_id", :name => "point[question_id]"
      assert_select "input#point_correct_answer", :name => "point[correct_answer]"
    end
  end
end
