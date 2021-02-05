class AddDefaultImageToCharacters < ActiveRecord::Migration
  def change
    change_column_default :characters, :image, "https://i.pinimg.com/474x/12/71/87/1271876bf2bdd7649ceab50034543e89.jpg"
  end
end
