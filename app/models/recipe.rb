class Recipe

  attr_accessor :id, :title, :image, :tags, :description, :chef_name, :image_id

  def initialize(id = 0,title = '', image = '', image_id = '', tags = [], description = '', chef_name = '')
    @id = id
    @title = title
    @image = image
    @tags = tags.dup
    @description = description
    @chef_name = chef_name
    @image_id = image_id
  end

  def tags_to_s
    tags.join (' - ')
  end
end
