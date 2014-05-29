class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :resource

  before_validation :set_status

  validates :status, inclusion: {in: ['pending']}
  validates :resource, :start_time, presence: true

  private

  def set_status
    self.status = 'pending' unless self.status
  end
end
