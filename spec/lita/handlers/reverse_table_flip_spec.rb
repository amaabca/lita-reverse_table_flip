require "spec_helper"

describe Lita::Handlers::ReverseTableFlip, lita_handler: true do

  it "responds to '(tableflip)' with an unflip" do
    send_message("(tableflip)")

    expect(replies.last).to include("┬─┬ ノ( ゜-゜ノ)")
  end
end
