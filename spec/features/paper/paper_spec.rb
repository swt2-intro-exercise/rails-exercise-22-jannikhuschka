require 'rails_helper'

describe "A paper", type: :feature do
    it "should have and belong to many authors" do
        paper = FactoryBot.create :paper
        expect(paper.authors).to be_empty
    end
end