require 'spec_helper'


describe RandomController do
  describe 'GET do_it' do
    it 'should not return nil for the book' do
      get :do_it, {}
      body = response.body
      #puts "body #{body}"
      parts = (body.split)
      book = parts[0]
      #puts "book #{book}"
      book.should_not be_nil
      chap = parts[1]
      #puts "book #{book}"
      book.should_not be_nil
    end

    it 'should return an integer for the chapter' do
      get :do_it, {}
      body = response.body
      #puts "body #{body}"
      parts = (body.split)
      chap = parts[1]
      #puts "chap #{chap}"
      #puts chap.to_i.class
      chap.to_i.should be_an_kind_of(Integer)
    end
  end
end