class AddParperclipToBill < ActiveRecord::Migration[5.2]
  def change
    add_attachment :bills, :image
  end
end
