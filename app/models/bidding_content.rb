class BiddingContent < ApplicationRecord
  validates_presence_of :content
  belongs_to :bidding
end
