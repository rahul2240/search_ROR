require 'rails_helper'

RSpec.describe Book, type: :model do
  context "validation test" do
		
		it "for name presence" do
			book = Book.new(category: 'web', price: 1.00, isbn: 12).save
			expect(book).to eq(false)
		end

		it "for category presence" do
			book = Book.new(name: 'test', price: 1.00, isbn: 12).save
			expect(book).to eq(false)
		end
		
		it "for price presence" do
			book = Book.new(name: 'test', category: 'web', isbn: 12).save
			expect(book).to eq(false)
		end
		
		it "for isbn presence" do
			book = Book.new(name: 'test',category: 'web', price: 1.00).save
			expect(book).to eq(false)
		end

		it "successful done" do
			book = Book.new(name: 'test',category: 'web', price: 1.00, isbn: 12).save
			expect(book).to eq(true)
		end
		
	end

	context "scope test" do
	end
end