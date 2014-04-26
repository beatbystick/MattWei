require 'spec_helper'

describe "properties/new" do
  before(:each) do
    assign(:property, stub_model(Property,
      :address => "MyString",
      :rent => 1,
      :description => ""
    ).as_new_record)
  end

  it "renders new property form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", properties_path, "post" do
      assert_select "input#property_address[name=?]", "property[address]"
      assert_select "input#property_rent[name=?]", "property[rent]"
      assert_select "input#property_description[name=?]", "property[description]"
    end
  end
end
