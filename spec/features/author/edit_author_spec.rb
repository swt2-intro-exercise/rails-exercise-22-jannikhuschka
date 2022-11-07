require 'rails_helper'

describe "Edit author page", type: :feature do
    it "should exist at 'edit_author_path' and render withour error" do
        alan = FactoryBot.create :turing
        visit edit_author_path(alan)
    end

    it "should update the author in the database" do
        alan = FactoryBot.create :turing
        visit edit_author_path(alan)
        page.fill_in 'author[last_name]', with: 'Mathison'
        find('input[type="submit"]').click
        expect(page).to have_text('Alan Mathison')
    end
end