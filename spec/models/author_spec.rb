require 'rails_helper'

describe Author, type: :model do
    it "should have a first name, last name, and homepage" do
        author = Author.new(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')
        expect(author.name).to eq('Alan Turing')
    end
end