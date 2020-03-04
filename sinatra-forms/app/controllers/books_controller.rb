class BooksController < Sinatra::Base
  set :views, './app/views/books'

  get '/books' do
    @books = Book.all
    erb :index
  end

  get '/books/new' do
    erb :new
  end
  
  get '/books/:id' do
    @book = Book.find(params[:id])
    erb :show
  end

  

end