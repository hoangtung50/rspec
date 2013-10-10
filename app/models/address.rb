class Address < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :street, :city, :state, :country_code
  validates :country_code, format: { with: /\A[a-zA-Z]{2}/}
  before_save do
    self.country_code = 'US' if self.country_code.blank?
  end
end
