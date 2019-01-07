require 'rails_helper'

RSpec.describe "articals/show", type: :view do
  before(:each) do
    @artical = assign(:artical, Artical.create!(
      :title => "Title",
      :category => "Category",
      :content => "Content",
      :user => 2,
      :read_number => 3,
      :thumber_up_number => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/Content/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
