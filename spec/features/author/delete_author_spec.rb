require 'rails_helper'

describe "Author index page", type: :feature do
    it "should have a link to delete an author" do
        alan = FactoryBot.create :turing
        visit authors_path
        expect(page).to have_button 'Delete'
    end

    it "should delete an author" do
        alan = FactoryBot.create :turing
        visit authors_path
        click_button('Delete')
        expect(Author.find_by(id: alan.id)).to be_nil
    end
end