class AddPositionInPost < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :position, :integer, default: 1
  end
end


