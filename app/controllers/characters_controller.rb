class CharactersController < ApplicationController

    
    # CREATE

        # NEW - renders the form (its a get request because only GETTING the form)
        # make a get request to '/characters/new'

        get '/characters/new' do
            require_login
            erb :'/characters/new'
        end

        # Create
        # make a post request to '/characters'

        post '/characters' do
            require_login
            new_params = params.reject{|key, value| key == "image" && value.empty?}
            character = current_user.characters.build(new_params)
            character.image = nil if character.image.empty?
            if character.save
                redirect '/characters'
            else
                @error = "You must enter at least a name and a color!"
                erb :'/characters/new'
            end
        end

    # READ

        # Index
        # make a get request to '/characters' 

        get '/characters' do
            require_login
            @characters = Character.all
            erb :'characters/index'
        end

        # Show
        # make a get request to '/characters/:id'

        get '/characters/:id' do
            require_login
            @character = Character.find_by(id: params[:id])
                if @character
                    erb :'characters/show'
                else
                    redirect '/characters'
                end
            end
            

    # UPDATE 

        # Edit
        # make a get request to '/characters/:id/edit'
        get '/characters/:id/edit' do
            require_login
            @character = Character.find(params[:id])
            erb :'/characters/edit'
        end

        # Update
        # make a patch request to '/characters/:id'

        patch '/characters/:id' do
            require_login
            @character = Character.find(params[:id])
            if !params["character"]["name"].empty? && !params["character"]["color"].empty?
                @character.update(params["character"])
                redirect "/characters/#{params[:id]}"
            else
                @error = "Whoops, looks like something went wrong.  Please try again."
                erb :'characters/edit'
            end
        end

            # character.name = params["character"]["name"] unless params["character"]["name"].empty?
            # character.color = params["character"]["color"] unless params["character"]["color"].empty?
            # character.age = params["character"]["age"] unless params["character"]["age"].empty?
            # character.accessory = params["character"]["accessory"] unless params["character"]["accessory"].empty?
            # character.special_ability = params["character"]["special_ability"] unless params["character"]["special_ability"].empty?
            # character.backstory = params["character"]["backstory"] unless params["character"]["backstory"].empty?
            # character.image = params["character"]["image"] 
            # character.save


    
            # character.update(name: params["name"], color: params["color"], age: params["age"], accessory: params["accessory"], special_ability: params["special_ability"], backstory: params["backstory"], image: params["image"])


    # DESTROY

        # Make a delete request to '/characters/:id'

        delete '/characters/:id' do
            require_login
            character = Character.find(params[:id])
            character.destroy
            redirect '/characters'
        end
   
end