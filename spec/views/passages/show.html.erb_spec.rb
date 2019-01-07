require 'rails_helper'

RSpec.describe "passages/show", type: :view do
  before(:each) do
    @passage = assign(:passage, Passage.create!(
      :user_id => 2,
      :title => "Title",
      :content => "Content",
      :catagory => "Catagory",
      :read_number => 3,
      :thumber_up_number => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Content/)
    expect(rendered).to match(/Catagory/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
