class AcceptedBidding < Bidding
  self.table_name = "biddings"
  default_scope { where("accept=true") }
end
