require 'rails_helper'

RSpec.describe "book_shelves/show", type: :view do
  before(:each) do
    assign(:book_shelf, BookShelf.create!(
      user: nil,
      book: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
