require 'rails_helper'

RSpec.describe "book_shelves/new", type: :view do
  before(:each) do
    assign(:book_shelf, BookShelf.new(
      user: nil,
      book: nil
    ))
  end

  it "renders new book_shelf form" do
    render

    assert_select "form[action=?][method=?]", book_shelves_path, "post" do

      assert_select "input[name=?]", "book_shelf[user_id]"

      assert_select "input[name=?]", "book_shelf[book_id]"
    end
  end
end
