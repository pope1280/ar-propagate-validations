require 'chronic'

class Event < ActiveRecord::Base
  validates :organizer_name, :presence => true
  validates :title, :presence => true
  validates :title, :uniqueness => true
  validates :organizer_email, :presence => true
  validates :organizer_email, :format => { :with => /\w+@\w+.(\w{3}|\w{2})/, 
    :message => "Please enter a valid email address"}
  validates :date, :presence => true
  validate :event_date_cannot_be_in_the_past

def event_date_cannot_be_in_the_past
  if :date < Date.today
    errors.add(:date, "Can't be in the past")
  end
end


end
