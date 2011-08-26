class Book
  include Mongoid::Document
  include Mongoid::Slug
  field :title
  slug  :title, :index => true do |doc|
    doc.title
  end
  embeds_many :subjects
  references_many :authors
end

class ComicBook < Book
end
