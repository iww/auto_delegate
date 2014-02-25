require 'spec_helper'

describe "dues/index" do
  before(:each) do
    assign(:dues, [
      stub_model(Due,
        :collection_id => 1,
        :max => 2,
        :reg => 3,
        :min => 4,
        :sub => 5
      ),
      stub_model(Due,
        :collection_id => 1,
        :max => 2,
        :reg => 3,
        :min => 4,
        :sub => 5
      )
    ])
  end

  it "renders a list of dues" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
