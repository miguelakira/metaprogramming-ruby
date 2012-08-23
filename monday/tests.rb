require 'test/unit'
require_relative 'alphanumeric.rb'
require_relative 'replace.rb'

class ToAlphanumericTest < Test::Unit::TestCase
    def test_strips_non_alphanumeric_characters
        assert_equal '3 the Magic Number', ('#3, the *Magic, Number*?').to_alphanumeric
    end
end

class ReplaceTest < Test::Unit::TestCase
    def test_replace
        book_topics = ['html', 'java', 'css']
        replace(book_topics, 'java', 'ruby')
        expected = ['html', 'ruby', 'css']
        assert_equal expected, book_topics
    end
end