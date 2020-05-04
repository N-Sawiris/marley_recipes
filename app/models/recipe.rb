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

  def self.get_all_recipes
    url = "https://cdn.contentful.com/spaces/#{space}/environments/master/entries?access_token=#{Rails.application.credentials.contentful_token}&content_type=recipe&select=sys.id,fields.title,fields.photo"#&limit=3&skip=1"
    response = Faraday.get(url, {}, {'Accept' => 'application/json'})
    recipes_json = JSON.parse(response.body)

    images = Hash.new
    recipes_json['includes']['Asset'].each do |asset|
      images[asset['sys']['id']] = "https:#{asset['fields']['file']['url']}"
    end
    recipes = Array.new
    recipes_json["items"].each do |recipe|
      image_id = recipe['fields']['photo']['sys']['id']
      recipes << Recipe.new(recipe["sys"]["id"], recipe["fields"]["title"], images[recipe['fields']['photo']['sys']['id']], image_id)

    end

    recipes
  end

  def self.get_recipe(photo_id)
    url = "https://cdn.contentful.com/spaces/#{space}/environments/master/entries?access_token=#{Rails.application.credentials.contentful_token}&include=2&content_type=recipe&fields.photo.sys.id=#{photo_id}"

    response = Faraday.get(url, {}, {'Accept' => 'application/json'})
    recipe_json = JSON.parse(response.body)

    @recipe = Recipe.new

    @recipe.id = recipe_json['items'][0]['sys']['id']
    @recipe.title = recipe_json['items'][0]['fields']['title']
    @recipe.description = recipe_json['items'][0]['fields']['description']
    recipe_json['includes']['Asset'].each do |asset|
      @recipe.image = "https:#{asset['fields']['file']['url']}" if asset['fields']['file']['contentType'].start_with? 'image'
    end

    unless recipe_json['includes']['Entry'].nil?
      recipe_json['includes']['Entry'].each do |entry|
        @recipe.chef_name = entry['fields']['name'] if entry['sys']['contentType']['sys']['id'] == 'chef'
        @recipe.tags << entry['fields']['name'] if entry['sys']['contentType']['sys']['id'] == 'tag'
      end
    end
    @recipe
  end

  def self.space
    "kk2bw5ojx476"
  end
end
