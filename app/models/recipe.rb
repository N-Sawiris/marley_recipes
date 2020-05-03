class Recipe

  attr_accessor :title, :image, :tags, :description, :chef_name
  attr_reader :id

  def initialize(title = '', image = '', tags = [], description = '', chef_name = '')
    @title = title
    @image = image
    @tags = tags.dup
    @description = description
    @chef_name = chef_name
  end

  def self.get_all_recipes
    desc = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
    recipe = Recipe.new("What is Lorem Ipsum?", "https://marleyspoon.com/media/recipes/47168/main_photos/large/oregano_pork_steaks-04d719dabf2420ebe5d4e2e76f733605.jpeg",[], desc, "John")
    recipe
    [recipe]
  end

  def self.get_recipe
    desc = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
    @recipe = Recipe.new("What is Lorem Ipsum?", "https://marleyspoon.com/media/recipes/47168/main_photos/large/oregano_pork_steaks-04d719dabf2420ebe5d4e2e76f733605.jpeg",[], desc, "John")
    @recipe
  end
end
