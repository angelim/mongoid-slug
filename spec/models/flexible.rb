class Flexible
  include Mongoid::Document
  include Mongoid::Slug
  field :title
  slug :title, :slug_with_id => true
end

class DynamicFlexible
  include Mongoid::Document
  include Mongoid::Slug
  field :title
  slug :slug_with_id => true do |doc|
    "dynamic-#{doc.title}"
  end
end