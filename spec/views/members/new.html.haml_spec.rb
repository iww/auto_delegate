require 'spec_helper'

describe "members/new" do
  before(:each) do
    assign(:member, stub_model(Member,
      :first_name => "MyString",
      :last_name => "MyString",
      :address1 => "MyString",
      :address2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :postal_code => "MyString",
      :country => "MyString",
      :email => "MyString",
      :telephone => "MyString",
      :employer => "MyString",
      :occupation => "MyString",
      :mail_iw => false,
      :general_defense => false,
      :member_number => 1,
      :industrial_union => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new member form" do
    render

    assert_select "form[action=?][method=?]", members_path, "post" do
      assert_select "input#member_first_name[name=?]", "member[first_name]"
      assert_select "input#member_last_name[name=?]", "member[last_name]"
      assert_select "input#member_address1[name=?]", "member[address1]"
      assert_select "input#member_address2[name=?]", "member[address2]"
      assert_select "input#member_city[name=?]", "member[city]"
      assert_select "input#member_state[name=?]", "member[state]"
      assert_select "input#member_postal_code[name=?]", "member[postal_code]"
      assert_select "input#member_country[name=?]", "member[country]"
      assert_select "input#member_email[name=?]", "member[email]"
      assert_select "input#member_telephone[name=?]", "member[telephone]"
      assert_select "input#member_employer[name=?]", "member[employer]"
      assert_select "input#member_occupation[name=?]", "member[occupation]"
      assert_select "input#member_mail_iw[name=?]", "member[mail_iw]"
      assert_select "input#member_general_defense[name=?]", "member[general_defense]"
      assert_select "input#member_member_number[name=?]", "member[member_number]"
      assert_select "input#member_industrial_union[name=?]", "member[industrial_union]"
      assert_select "input#member_user_id[name=?]", "member[user_id]"
    end
  end
end
