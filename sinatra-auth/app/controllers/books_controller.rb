class BooksController < ApplicationController

  get '/books' do
    if session[:user_id]
    @books = Book.all
    erb :'books/index'
    else
      redirect to '/'
    end
  end

  get '/books/new' do
    @book = Book.new
    erb :new
  end
  
  get '/books/:slug' do
    @book = Book.find_by_slug(params[:slug])
    erb :show
  end

  post '/books' do
    @book = Book.new(params[:book])
    if @book.save
      redirect to "/books/#{@book.slug}"
    else
      erb :new
    end
  end

  patch '/books/:slug' do
    @book = Book.find_by_slug(params[:slug])
    if @book.update(params[:book])
      redirect to "/books/#{@book.slug}"
    else
      erb :new
    end
  end

  get '/books/:slug/edit' do
    @book = Book.find_by_slug(params[:slug])
    erb :new
  end
  

end