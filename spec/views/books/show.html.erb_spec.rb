require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
    assign(:book, Book.create!(
      title: "Title",
      price: 2,
      R18: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
  end
end
