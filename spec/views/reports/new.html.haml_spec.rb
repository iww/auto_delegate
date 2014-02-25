require 'spec_helper'

describe "reports/new" do
  before(:each) do
    assign(:report, stub_model(Report).as_new_record)
  end

  it "renders new report form" do
    render

    assert_select "form[action=?][method=?]", reports_path, "post" do
    end
  end
end
