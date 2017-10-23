require 'rails_helper'

RSpec.describe BooksController, type: :controller do

	context "GET #index" do

		it "returns a success response" do
			get :index
			expect(response).to be_success
		end
	end

	context "GET #show" do

		it "should show book" do
			book = Book.create!(name: 'test', category: 'web', price: 1.00, isbn: 4)
			get :show, params: { id: book.to_param }
			expect(response).to be_success
		end
	end

end
