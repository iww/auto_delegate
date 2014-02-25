require 'spec_helper'

describe "collections/new" do
  before(:each) do
    assign(:collection, stub_model(Collection,
      :user_id => 1,
      :member_id => 1,
      :initial_fees => 1
    ).as_new_record)
  end

  it "renders new collection form" do
    render

    assert_select "form[action=?][method=?]", collections_path, "post" do
      assert_select "input#collection_user_id[name=?]", "collection[user_id]"
      assert_select "input#collection_member_id[name=?]", "collection[member_id]"
      assert_select "input#collection_initial_fees[name=?]", "collection[initial_fees]"
    end
  end
end
