class Zoo
  attr_reader :name, :street, :city, :state, :zip_code, :address,
              :inventory, :animal_count

  def initialize(name, street, city, state, zip_code)
    @name = name
    @street = street
    @city = city
    @state = state
    @zip_code = zip_code
    # @address =
    @inventory = []
    @animal_count = 0
  end

  def address
    puts "#{@street} #{@city}, #{@state} #{@zip_code}"
  end

  def add_animal(animal)
    @inventory << animal
    @animal_count += 1
  end

  def animals_older_than(age)
    
  end

  def total_weight_of_animals
  end

  def details
  end

end
