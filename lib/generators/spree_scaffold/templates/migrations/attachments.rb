class CreateSpree<%= class_name.pluralize %>Attachments < ActiveRecord::Migration
  def up
<% attributes.each do |attribute| -%>
<% if attribute.type == :image || attribute.type == :file -%>
    add_attachment :spree_<%= table_name %>, :<%= attribute.name %>
<% end -%>
<% end -%>
  end

  def down
<% attributes.each do |attribute| -%>
<% if attribute.type == :image || attribute.type == :file -%>
    remove_attachment :spree_<%= table_name %>, :<%= attribute.name %>
<% end -%>
<% end -%>
  end
end
