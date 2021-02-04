class AddImgToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events , :img, :string
  end
end
