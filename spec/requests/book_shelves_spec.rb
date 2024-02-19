require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/book_shelves", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # BookShelf. As you add validations to BookShelf, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      BookShelf.create! valid_attributes
      get book_shelves_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      book_shelf = BookShelf.create! valid_attributes
      get book_shelf_url(book_shelf)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_book_shelf_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      book_shelf = BookShelf.create! valid_attributes
      get edit_book_shelf_url(book_shelf)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new BookShelf" do
        expect {
          post book_shelves_url, params: { book_shelf: valid_attributes }
        }.to change(BookShelf, :count).by(1)
      end

      it "redirects to the created book_shelf" do
        post book_shelves_url, params: { book_shelf: valid_attributes }
        expect(response).to redirect_to(book_shelf_url(BookShelf.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new BookShelf" do
        expect {
          post book_shelves_url, params: { book_shelf: invalid_attributes }
        }.to change(BookShelf, :count).by(0)
      end

    
      it "renders a successful response (i.e. to display the 'new' template)" do
        post book_shelves_url, params: { book_shelf: invalid_attributes }
        expect(response).to be_successful
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested book_shelf" do
        book_shelf = BookShelf.create! valid_attributes
        patch book_shelf_url(book_shelf), params: { book_shelf: new_attributes }
        book_shelf.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the book_shelf" do
        book_shelf = BookShelf.create! valid_attributes
        patch book_shelf_url(book_shelf), params: { book_shelf: new_attributes }
        book_shelf.reload
        expect(response).to redirect_to(book_shelf_url(book_shelf))
      end
    end

    context "with invalid parameters" do
    
      it "renders a successful response (i.e. to display the 'edit' template)" do
        book_shelf = BookShelf.create! valid_attributes
        patch book_shelf_url(book_shelf), params: { book_shelf: invalid_attributes }
        expect(response).to be_successful
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested book_shelf" do
      book_shelf = BookShelf.create! valid_attributes
      expect {
        delete book_shelf_url(book_shelf)
      }.to change(BookShelf, :count).by(-1)
    end

    it "redirects to the book_shelves list" do
      book_shelf = BookShelf.create! valid_attributes
      delete book_shelf_url(book_shelf)
      expect(response).to redirect_to(book_shelves_url)
    end
  end
end
