class WantsController < ApplicationController
        def index
          @wants = Want.all
        end
      
        def new
          @want = Want.new
          @wants = Want.all
        end
      
        def create
          want  =  Want.new(want_params)
          want.user_id = current_user.id
          want.save
            redirect_to :action => "new"
          
        end
      
        private
        def want_params
          params.require(:want).permit(:brand_name)
        end
      end
