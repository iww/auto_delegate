require 'spec_helper'

describe "dues/edit" do
  before(:each) do
    @due = assign(:due, stub_model(Due,
      :collection_id => 1,
      :max => 1,
      :reg => 1,
      :min => 1,
      :sub => 1
    ))
  end

  it "renders the edit due form" do
    render

    assert_select "form[action=?][method=?]", due_path(@due), "post" do
      assert_select "input#due_collection_id[name=?]", "due[collection_id]"
      assert_select "input#due_max[name=?]", "due[max]"
      assert_select "input#due_reg[name=?]", "due[reg]"
      assert_select "input#due_min[name=?]", "due[min]"
      assert_select "input#due_sub[name=?]", "due[sub]"
    end
  end
end
