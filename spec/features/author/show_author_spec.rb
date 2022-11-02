require 'rails_helper'

describe "Show author page", type: :feature do
    it "should exist at 'author_path' and render withour error" do
        visit author_path(@alan)
    end
end