ActiveAdmin.register Attachment do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  # index ページの表示内容をカスタマイズ
  index do
    selectable_column # 選択カラムを追加
    # data は binary なので非表示
    column :id
    column :url
    column :post
    column :created_at
    column :updated_at
    actions # アクションカラムを追加
  end
end