require 'rails_helper'

RSpec.describe "articals/new", type: :view do
  before(:each) do
    assign(:artical, Artical.new(
      :title => "MyString",
      :category => "MyString",
      :content => "MyString",
      :user => 1,
      :read_number => 1,
      :thumber_up_number => 1
    ))
  end

  it "renders new artical form" do
    render

    assert_select "form[action=?][method=?]", articals_path, "post" do

      assert_select "input#artical_title[name=?]", "artical[title]"

      assert_select "input#artical_category[name=?]", "artical[category]"

      assert_select "input#artical_content[name=?]", "artical[content]"

      assert_select "input#artical_user[name=?]", "artical[user]"

      assert_select "input#artical_read_number[name=?]", "artical[read_number]"

      assert_select "input#artical_thumber_up_number[name=?]", "artical[thumber_up_number]"
    end
  end
end
