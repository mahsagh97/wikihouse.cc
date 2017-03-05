class Partner < PushType::Node
  has_child_nodes false
  unexpose!

  field :link, :string
  field :image_id, :asset, validates: { presence: true }

  def self.sorted
    order "sort_order"
  end

  def image_url
    image.file.url
  end
end