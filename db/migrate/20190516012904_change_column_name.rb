class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :enqueues, :type, :tipo_enquete
  end
end
