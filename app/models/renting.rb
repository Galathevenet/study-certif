class Renting < ApplicationRecord
  belongs_to :user
  belongs_to :flat

  STATUS = ["Accepted", "Pending", "Rejected"]
  validates :status, inclusion: { in: STATUS }
end
