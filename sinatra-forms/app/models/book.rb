class Book < ActiveRecord::Base
  validates :title, uniqueness: true, presence: true
  before_save :slugify
  validates :slug, uniqueness: true

  def slugify
    self.slug = self.slug_sub
  end

  def slug_sub
    self.title.downcase.gsub("&", "and").parameterize
  end

end
