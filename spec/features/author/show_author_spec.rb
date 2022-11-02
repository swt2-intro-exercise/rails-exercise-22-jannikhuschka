require 'rails_helper'

describe "Show author page", type: :feature do
    it "should exist at 'author_path' and render withour error" do
        alan = FactoryBot.create :author
        visit author_path(alan)
    end

    it "should exist at 'author_path' and render withour error" do
        alan = FactoryBot.create :author
        visit author_path(alan)
        expect(page).to have_text(alan.name)
        expect(page).to have_link 'Homepage' , href: alan.homepage
    end

end