require 'spec_helper'

describe "assessments/edit" do
  before(:each) do
    @assessment = assign(:assessment, stub_model(Assessment,
      :assessment_type => "",
      :amount => 1,
      :collection_id => 1
    ))
  end

  it "renders the edit assessment form" do
    render

    assert_select "form[action=?][method=?]", assessment_path(@assessment), "post" do
      assert_select "input#assessment_assessment_type[name=?]", "assessment[assessment_type]"
      assert_select "input#assessment_amount[name=?]", "assessment[amount]"
      assert_select "input#assessment_collection_id[name=?]", "assessment[collection_id]"
    end
  end
end
