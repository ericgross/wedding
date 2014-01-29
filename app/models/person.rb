# == Schema Information
#
# Table name: people
#
#  id             :integer          not null, primary key
#  first_name     :string(255)
#  last_name      :string(255)
#  email          :string(255)
#  address_line_1 :string(255)
#  address_line_2 :string(255)
#  address_city   :string(255)
#  address_state  :string(255)
#  address_zip    :string(255)
#  phone_number   :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

class Person < ActiveRecord::Base
  validates :first_name, presence: true, length: { minimum: 2 }
  validates :last_name, presence: true, length: { minimum: 2 }
  validates :email, presence: true, :email => true
  validates :address_line_1, presence: true, length: { minimum: 5 }
  validates :address_line_2, presence: true
  validates :address_city, presence: true, length: { minimum: 4 }
  validates :address_state, presence: true, length: { is: 2 }
  validates :address_zip, presence: true, length: { is: 5 }, numericality: { only_integer: true }
  validates :phone_number, presence: true, length: { minimum: 10 }

end
