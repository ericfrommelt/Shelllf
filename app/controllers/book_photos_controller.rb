class BookPhotosController < ApplicationController
  def index
    @book_photos = BookPhoto.all
  end

  def show
    @book_photo = BookPhoto.find(params[:id])
  end

  def new
    @book_photo = BookPhoto.new
    @books = Book.all
  end

  def create
    @book_photo = BookPhoto.new(photo_params)
    @books = Book.all
    if @book_photo.save
      redirect_to @book_photo
    else
      render :new
    end

    def update
      @book_photo = BookPhoto.find(params[:id])
      @books = Book.all
      if @book.update(book_params)
        redirect_to photos_path
      else
        render :edit
      end
    end
  end



  def photo_params
    return params.require(:photo).permit(:photo_file_name, :photo_content_type, :photo_file_size, :book_id)
  end
end
