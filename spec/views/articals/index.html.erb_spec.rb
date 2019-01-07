require 'rails_helper'

RSpec.describe "articals/index", type: :view do
  before(:each) do
    assign(:articals, [
      Artical.create!(
        :title => "Title",
        :category => "Category",
        :content => "Content",
        :user => 2,
        :read_number => 3,
        :thumber_up_number => 4
      ),
      Artical.create!(
        :title => "Title",
        :category => "Category",
        :content => "Content",
        :user => 2,
        :read_number => 3,
        :thumber_up_number => 4
      )
    ])
  end

  it "renders a list of articals" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
