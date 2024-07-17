describe 'double test' do
  it '--' do
    book = double("book")
    p book
    book = instance_double("Book", :pages => 250)
    p book
    allow(book).to receive(:title).and_return("The RSpec Book") #or
    allow(book).to receive_messages(
    :title => "The RSpec Book",
    :subtitle => "Behaviour-Driven Development with RSpec, Cucumber, and Friends")
    puts book.title
    puts book.subtitle
  end
end
