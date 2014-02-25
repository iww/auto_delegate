require 'spec_helper'

describe "assessments/index" do
  before(:each) do
    assign(:assessments, [
      stub_model(Assessment,
        :assessment_type => "",
        :amount => 1,
        :collection_id => 2
      ),
      stub_model(Assessment,
        :assessment_type => "",
        :amount => 1,
        :collection_id => 2
      )
    ])
  end

  it "renders a list of assessments" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
