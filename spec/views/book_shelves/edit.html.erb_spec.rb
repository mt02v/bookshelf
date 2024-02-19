require 'rails_helper'

RSpec.describe "book_shelves/edit", type: :view do
  let(:book_shelf) {
    BookShelf.create!(
      user: nil,
      book: nil
    )
  }

  before(:each) do
    assign(:book_shelf, book_shelf)
  end

  it "renders the edit book_shelf form" do
    render

    assert_select "form[action=?][method=?]", book_shelf_path(book_shelf), "post" do

      assert_select "input[name=?]", "book_shelf[user_id]"

      assert_select "input[name=?]", "book_shelf[book_id]"
    end
  end
end
