class Quote < ActiveRecord::Base
  validates :saying, presence: true,
                     length: { maximum:140, minimum:3 }
  validates :author, presence: true,
                     length: { maximum: 50, minimum: 3 }
  validates :author, :saying, format: { without: /fuck/ }
  validates :author, :saying, format: { without: /ass/ }
end
