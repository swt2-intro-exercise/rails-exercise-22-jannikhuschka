require 'rails_helper'

RSpec.describe "papers/new", type: :view do
  before(:each) do
    assign(:paper, Paper.new(
      title: "MyString",
      venue: "MyString",
      year: 1
    ))
  end

  it "renders new paper form" do
    render

    assert_select "form[action=?][method=?]", papers_path, "post" do

      assert_select "input[name=?]", "paper[title]"

      assert_select "input[name=?]", "paper[venue]"

      assert_select "input[name=?]", "paper[year]"
    end
  end

  it "should not validate without a title" do
    @paper = Paper.new(title: nil)
    expect(@paper).to_not be_valid
  end

  it "should not validate without a venue" do
    @paper = Paper.new(venue: nil)
    expect(@paper).to_not be_valid
  end

  it "should not validate without a year" do
    @paper = Paper.new(year: nil)
    expect(@paper).to_not be_valid
  end

  it "should not validate with a non-integer year" do
    @paper = Paper.new(year: "asdf")
    expect(@paper).to_not be_valid
  end
end
