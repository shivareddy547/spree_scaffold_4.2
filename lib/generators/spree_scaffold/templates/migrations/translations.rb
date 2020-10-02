class CreateSpree<%= class_name.pluralize %>Translations < ActiveRecord::Migration
  def up
    Spree::<%= class_name %>.create_translation_table!({
<% attributes.each do |attribute| -%>
<% next unless options[:i18n].include? attribute.name -%>
      <%= attribute.name %>: :<%= attribute.type %>,
<% end -%>
    })
  end

  def down
    Spree::<%= class_name %>.drop_translation_table!
  end
end
