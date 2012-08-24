#---
# Excerpted from "Metaprogramming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ppmetr for more book information.
#---
module Printable
  private 
  def print
    # ...
      puts "Printable#print()"
  end

  def prepare_cover
    print
    # ...
  end
end

module Document
  def print_to_screen
    prepare_cover
    print
  end
  
  def format_for_screen
    # ...
  end
  
  def print
    # ...
    puts "Document#print()"
  end
end

class Book
  include Printable
  include Document
  
  # ...  
end

b = Book.new
b.print_to_screen

Book.ancestors  # => [Book, Printable, Document, Object, Kernel, BasicObject]