class RenameShowCategoryToAward < ActiveRecord::Migration[5.0]
  def change
    rename_column :picks, :show_category_id, :award_id
  end
end
