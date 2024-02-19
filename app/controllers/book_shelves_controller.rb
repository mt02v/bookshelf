class BookShelvesController < ApplicationController
  before_action :set_book_shelf, only: %i[ show edit update destroy ]

  # GET /book_shelves or /book_shelves.json
  def index
    @book_shelves = BookShelf.all
  end

  # GET /book_shelves/1 or /book_shelves/1.json
  def show
  end

  # GET /book_shelves/new
  def new
    @book_shelf = BookShelf.new
  end

  # GET /book_shelves/1/edit
  def edit
  end

  # POST /book_shelves or /book_shelves.json
  def create
    @book_shelf = BookShelf.new(book_shelf_params)

    respond_to do |format|
      if @book_shelf.save
        format.html { redirect_to book_shelf_url(@book_shelf), notice: "Book shelf was successfully created." }
        format.json { render :show, status: :created, location: @book_shelf }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book_shelf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_shelves/1 or /book_shelves/1.json
  def update
    respond_to do |format|
      if @book_shelf.update(book_shelf_params)
        format.html { redirect_to book_shelf_url(@book_shelf), notice: "Book shelf was successfully updated." }
        format.json { render :show, status: :ok, location: @book_shelf }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book_shelf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_shelves/1 or /book_shelves/1.json
  def destroy
    @book_shelf.destroy

    respond_to do |format|
      format.html { redirect_to book_shelves_url, notice: "Book shelf was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_shelf
      @book_shelf = BookShelf.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_shelf_params
      params.require(:book_shelf).permit(:user_id, :book_id)
    end
end
