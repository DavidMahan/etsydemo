class Product < ActiveRecord::Base
	has_attached_file :image, styles: { medium: "200x", thumb: "100x100>" }, default_url: "default.jpg"

  validates_attachment_file_name :image, matches: [/png\z/, /jpe?g\z/]

	validates :name, :description, :price, presence: true
  	validates :price, numericality: { greater_than: 0 }
  	validates_attachment_presence :image

  	belongs_to :user

  end
