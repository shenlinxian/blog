require 'rails_helper'

RSpec.describe "passages/index", type: :view do
  before(:each) do
    assign(:passages, [
      Passage.create!(
        :user_id => 2,
        :title => "Title",
        :content => "Content",
        :catagory => "Catagory",
        :read_number => 3,
        :thumber_up_number => 4
      ),
      Passage.create!(
        :user_id => 2,
        :title => "Title",
        :content => "Content",
        :catagory => "Catagory",
        :read_number => 3,
        :thumber_up_number => 4
      )
    ])
  end

  it "renders a list of passages" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => "Catagory".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
