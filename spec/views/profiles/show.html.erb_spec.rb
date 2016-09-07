require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :age => 2,
      :height_in_inches => 3,
      :gender => "Gender",
      :description => "MyText",
      :hobbies => "Hobbies",
      :books => "Books",
      :shows => "Shows",
      :fitness_level => "Fitness Level",
      :occupation => "Occupation"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Hobbies/)
    expect(rendered).to match(/Books/)
    expect(rendered).to match(/Shows/)
    expect(rendered).to match(/Fitness Level/)
    expect(rendered).to match(/Occupation/)
  end
end
