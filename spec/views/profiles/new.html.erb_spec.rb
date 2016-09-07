require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      :age => 1,
      :height_in_inches => 1,
      :gender => "MyString",
      :description => "MyText",
      :hobbies => "MyString",
      :books => "MyString",
      :shows => "MyString",
      :fitness_level => "MyString",
      :occupation => "MyString"
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input#profile_age[name=?]", "profile[age]"

      assert_select "input#profile_height_in_inches[name=?]", "profile[height_in_inches]"

      assert_select "input#profile_gender[name=?]", "profile[gender]"

      assert_select "textarea#profile_description[name=?]", "profile[description]"

      assert_select "input#profile_hobbies[name=?]", "profile[hobbies]"

      assert_select "input#profile_books[name=?]", "profile[books]"

      assert_select "input#profile_shows[name=?]", "profile[shows]"

      assert_select "input#profile_fitness_level[name=?]", "profile[fitness_level]"

      assert_select "input#profile_occupation[name=?]", "profile[occupation]"
    end
  end
end
