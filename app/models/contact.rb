class Contact < ActiveRecord::Base
  attr_accessor :iamabot

  validates_format_of    :email, :with => /\b[a-z0-9._%+-]+@(?:[a-z0-9-]+\.)+[a-z]{2,4}\b/i
  validates_presence_of  :message
end
