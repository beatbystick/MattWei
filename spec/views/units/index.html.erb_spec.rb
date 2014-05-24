require 'spec_helper'

describe "units/index" do
  before(:each) do
    assign(:units, [
      stub_model(Unit,
        :unit => "Unit",
        :bedrooms => 1,
        :bathrooms => 2,
        :rent => 3,
        :sqft => 4,
        :property => nil
      ),
      stub_model(Unit,
        :unit => "Unit",
        :bedrooms => 1,
        :bathrooms => 2,
        :rent => 3,
        :sqft => 4,
        :property => nil
      )
    ])
  end

  it "renders a list of units" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
