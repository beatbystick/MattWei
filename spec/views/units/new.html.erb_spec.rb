require 'spec_helper'

describe "units/new" do
  before(:each) do
    assign(:unit, stub_model(Unit,
      :unit => "MyString",
      :bedrooms => 1,
      :bathrooms => 1,
      :rent => 1,
      :sqft => 1,
      :property => nil
    ).as_new_record)
  end

  it "renders new unit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", units_path, "post" do
      assert_select "input#unit_unit[name=?]", "unit[unit]"
      assert_select "input#unit_bedrooms[name=?]", "unit[bedrooms]"
      assert_select "input#unit_bathrooms[name=?]", "unit[bathrooms]"
      assert_select "input#unit_rent[name=?]", "unit[rent]"
      assert_select "input#unit_sqft[name=?]", "unit[sqft]"
      assert_select "input#unit_property[name=?]", "unit[property]"
    end
  end
end
