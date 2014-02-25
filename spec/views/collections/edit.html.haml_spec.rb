require 'spec_helper'

describe "collections/edit" do
  before(:each) do
    @collection = assign(:collection, stub_model(Collection,
      :user_id => 1,
      :member_id => 1,
      :initial_fees => 1
    ))
  end

  it "renders the edit collection form" do
    render

    assert_select "form[action=?][method=?]", collection_path(@collection), "post" do
      assert_select "input#collection_user_id[name=?]", "collection[user_id]"
      assert_select "input#collection_member_id[name=?]", "collection[member_id]"
      assert_select "input#collection_initial_fees[name=?]", "collection[initial_fees]"
    end
  end
end
