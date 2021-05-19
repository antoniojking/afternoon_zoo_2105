require 'rspec'
require './lib/animal'
require './lib/zoo'

describe Zoo do
  it "exists and has attributes" do
    zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")

    expect(zoo).to be_an_instance_of(Zoo)
    expect(zoo.street).to eq("2300 Southern Blvd")
    expect(zoo.city).to eq("Bronx")
    expect(zoo.state).to eq("NY")
    expect(zoo.zip_code).to eq("10460")

    # expect(zoo.address).to eq("2300 Southern Blvd Bronx, NY 10460")
    expect(zoo.inventory).to eq([])
    expect(zoo.animal_count).to eq(0)
  end

  it "adds animals to the zoo and updates inventory" do
    zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")
    animal_1 = Animal.new("Sea Otter", 10, 25)
    animal_2 = Animal.new("Red Panda", 5, 70)
    animals = [animal_1, animal_2]

    zoo.add_animal(animal_1)
    zoo.add_animal(animal_2)

    expect(zoo.inventory).to eq(animals)
    expect(zoo.animal_count).to eq(2)
  end

  it "lists of animals by age" do
    zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")
    animal_1 = Animal.new("Sea Otter", 10, 25)
    animal_2 = Animal.new("Red Panda", 5, 70)
    animal_3 = Animal.new("Capybara", 100, 150)
    animal_4 = Animal.new("Red Panda", 150, 200)
    animals = [animal_1, animal_2, animal_3, animal_4]

    zoo.add_animal(animal_1)
    zoo.add_animal(animal_2)
    zoo.add_animal(animal_3)
    zoo.add_animal(animal_4)

    expect(zoo.animals_older_than(250)).to eq([])
    expect(zoo.animals_older_than(100)).to eq([animal_3, animal_4])
    expect(zoo.animals_older_than(10)).to eq(animals)
  end
end
