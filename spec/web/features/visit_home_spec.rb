require "spec_helper"

describe "visit homepage", :type => :feature do
  it "it successful and there is stuff" do
    visit "/"

    expect(page).to have_content("Jeff Hostetler")
  end
end