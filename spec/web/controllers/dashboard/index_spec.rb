require "spec_helper"
require_relative "../../../../apps/web/controllers/dashboard/index"

describe Web::Controllers::Dashboard::Index do
  it "is successful" do
    action = Web::Controllers::Dashboard::Index.new

    response = action.call({})

    expect(response[0]).to eq 200
  end
end