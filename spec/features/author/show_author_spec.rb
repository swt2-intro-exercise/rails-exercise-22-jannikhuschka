require 'rails_helper'

describe "Show author page", type: :feature do
    it "should exist at 'author_path' and render withour error" do
        alan = FactoryBot.create :turing
        visit author_path(alan)
    end

    it "should show the author's data correctly" do
        alan = FactoryBot.create :turing
        visit author_path(alan)
        expect(page).to have_text(alan.first_name)
        expect(page).to have_text(alan.last_name)
        expect(page).to have_text(alan.homepage)
    end

end