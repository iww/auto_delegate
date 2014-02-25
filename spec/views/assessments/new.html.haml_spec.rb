require 'spec_helper'

describe "assessments/new" do
  before(:each) do
    assign(:assessment, stub_model(Assessment,
      :assessment_type => "",
      :amount => 1,
      :collection_id => 1
    ).as_new_record)
  end

  it "renders new assessment form" do
    render

    assert_select "form[action=?][method=?]", assessments_path, "post" do
      assert_select "input#assessment_assessment_type[name=?]", "assessment[assessment_type]"
      assert_select "input#assessment_amount[name=?]", "assessment[amount]"
      assert_select "input#assessment_collection_id[name=?]", "assessment[collection_id]"
    end
  end
end
