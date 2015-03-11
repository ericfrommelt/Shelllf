class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @book_photo = BookPhoto.find_by(book_id: @book.id)
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def edit
    @book = Book.find(params[:id])
    @book.book_photos.build
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to book_path(@book)
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  def search
    @results = Gbook.search_by_title(params[:search])
  end

  def add_new
    new_book = Gbook.search_by_title(params[:gbook_id_number])
    @user = User.find(current_user)
    @book = Book.find_or_create_by(new_book.first)
    @book.users << current_user
    redirect_to edit_book_path(@book)
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :publisher, :year_published, :notes, :user_id, :user_id => [], book_photos_attributes: [:id, :photo, :photo_file_name, :photo_content_type, :photo_file_size, :book_id])
  end

end
