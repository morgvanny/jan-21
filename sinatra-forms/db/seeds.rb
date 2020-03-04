Book.destroy_all

GoogleBooks::Adapter.new("Bernie Sanders").fetch_books 
GoogleBooks::Adapter.new("Thomas Piketty").fetch_books 
GoogleBooks::Adapter.new("Karl Marx").fetch_books 
