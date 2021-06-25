require 'rails_helper'

RSpec.describe Cat, type: :model do


 it "should validate name" do
    cat = Cat.create age:4, enjoys: 'Meow Mix, and plenty of sunshine.'
    expect(cat.errors[:name]).to_not be_empty
  end  
 it "should validate age" do
    cat = Cat.create name: 'Buster', enjoys: 'Meow Mix, and plenty of sunshine.'
    expect(cat.errors[:age]).to_not be_empty
  end  
 it "should validate enjoys" do
    cat = Cat.create  name: 'Buster',  age:4 
    expect(cat.errors[:enjoys]).to_not be_empty
  end  
end
