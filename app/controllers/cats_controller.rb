class CatsController < ApplicationController
    def index
        cats = Cat.all
        render json: cats
    end

      def create
        # Create a new cat
        cat = Cat.create(cat_params)
        if cat.valid?

        # respond with our new cat
        render json: cat
        else 
            render json: cat.errors, status: 422
        end
    end

        # Handle strong parameters, so we are secure
       

            def update
            end

            def destroy
            end
     private
        def cat_params
            params.require(:cat).permit(:name, :age, :enjoys)
        end
end
