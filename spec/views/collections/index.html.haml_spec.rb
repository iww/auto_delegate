require 'spec_helper'

describe "collections/index" do
  before(:each) do
    assign(:collections, [
      stub_model(Collection,
        :user_id => 1,
        :member_id => 2,
        :initial_fees => 3
      ),
      stub_model(Collection,
        :user_id => 1,
        :member_id => 2,
        :initial_fees => 3
      )
    ])
  end

  it "renders a list of collections" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
