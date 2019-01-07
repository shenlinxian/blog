require 'rails_helper'

RSpec.describe "passages/edit", type: :view do
  before(:each) do
    @passage = assign(:passage, Passage.create!(
      :user_id => 1,
      :title => "MyString",
      :content => "MyString",
      :catagory => "MyString",
      :read_number => 1,
      :thumber_up_number => 1
    ))
  end

  it "renders the edit passage form" do
    render

    assert_select "form[action=?][method=?]", passage_path(@passage), "post" do

      assert_select "input#passage_user_id[name=?]", "passage[user_id]"

      assert_select "input#passage_title[name=?]", "passage[title]"

      assert_select "input#passage_content[name=?]", "passage[content]"

      assert_select "input#passage_catagory[name=?]", "passage[catagory]"

      assert_select "input#passage_read_number[name=?]", "passage[read_number]"

      assert_select "input#passage_thumber_up_number[name=?]", "passage[thumber_up_number]"
    end
  end
end
