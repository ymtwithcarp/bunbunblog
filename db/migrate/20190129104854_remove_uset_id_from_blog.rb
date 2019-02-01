class RemoveUsetIdFromBlog < ActiveRecord::Migration[5.2]
  def change
    remove_column :blogs, :uset_id, :string
  end
end
