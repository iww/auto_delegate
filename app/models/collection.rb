class Collection < ActiveRecord::Base
  belongs_to :member
  has_many :dues
  accepts_nested_attributes_for :dues, reject_if: :all_blank, allow_destory: true

end
