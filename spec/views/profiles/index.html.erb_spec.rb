require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :age => 2,
        :height_in_inches => 3,
        :gender => "Gender",
        :description => "MyText",
        :hobbies => "Hobbies",
        :books => "Books",
        :shows => "Shows",
        :fitness_level => "Fitness Level",
        :occupation => "Occupation"
      ),
      Profile.create!(
        :age => 2,
        :height_in_inches => 3,
        :gender => "Gender",
        :description => "MyText",
        :hobbies => "Hobbies",
        :books => "Books",
        :shows => "Shows",
        :fitness_level => "Fitness Level",
        :occupation => "Occupation"
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Hobbies".to_s, :count => 2
    assert_select "tr>td", :text => "Books".to_s, :count => 2
    assert_select "tr>td", :text => "Shows".to_s, :count => 2
    assert_select "tr>td", :text => "Fitness Level".to_s, :count => 2
    assert_select "tr>td", :text => "Occupation".to_s, :count => 2
  end
end
