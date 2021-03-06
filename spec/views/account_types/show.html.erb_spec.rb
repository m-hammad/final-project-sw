require 'rails_helper'

RSpec.describe "account_types/show", :type => :view do
  before(:each) do
    @account_type = assign(:account_type, AccountType.create!(
      :name => "Name",
      :lhs_attr => false,
      :rhs_attr => false,
      :plus_attr => false,
      :minus_attr => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
