require 'spec_helper'

describe "dues/show" do
  before(:each) do
    @due = assign(:due, stub_model(Due,
      :collection_id => 1,
      :max => 2,
      :reg => 3,
      :min => 4,
      :sub => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
  end
end
