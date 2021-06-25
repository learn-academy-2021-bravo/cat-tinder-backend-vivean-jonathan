require 'rails_helper'

RSpec.describe "Cats", type: :request do

  describe "GET /index" do
    it "gets a list of cats" do
      # Create a new cat in the Test Database (this is not the same one as development)
      Cat.create name: 'Buster', age: 4, enjoys: 'Meow Mix, and plenty of sunshine.'

      # Make a request to the API
      get '/cats'

      # Convert the response into a Ruby Hash
      json = JSON.parse(response.body)

      # Assure that we got a successful response
      expect(response).to have_http_status(200)

      # Assure that we got one result back as expected
      expect(json.length).to eq 1
    end
  end

  describe "POST /create" do
      it "creates a cat" do
      # The params we are going to send with the request
      cat_params = {
        cat: {
          name: 'Buster',
          age: 4,
          enjoys: 'Meow Mix, and plenty of sunshine.'
        }
      }

      # Send the request to the server
      post '/cats', params: cat_params

      # Assure that we get a success back
      expect(response).to have_http_status(200)

      # Look up the cat we expect to be created in the Database
      cat = Cat.first

      # Assure that the created cat has the correct attributes
      expect(cat.name).to eq 'Buster'
      expect(cat.age).to eq (4)
      expect(cat.name).to eq 'Meow Mix, and plenty of sunshine.'

    end
  end
end