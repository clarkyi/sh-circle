class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  scope :day_count, ->{where("created_at between ? and ? ", Time.now.beginning_of_day, Time.now.end_of_day)}
  scope :month_count, ->{where("created_at between ? and ? ", Time.now.beginning_of_month, Time.now.end_of_day)}
  scope :year_count, ->{where("created_at between ? and ? ", Time.now.beginning_of_year, Time.now.end_of_day)}
end
