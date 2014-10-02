class AddCssClassToImageWidget < ::Scrivito::Migration
  def up
    # This migration file allows to create and modify object class definitions or to change the CMS
    # content programatically. All Scrivito SDK classes and methods are available and arbitrary Ruby
    # code can be executed.
    #
    # Use `bundle exec rake cms:migrate` to run all migrations that are new to the `rtc` workspace.
    # Migrations are identified by an ID and only get executed once. If you migrate the CMS an
    # existing `rtc` workspace is used or a new `rtc` workspace is created. Only one developer at a
    # time can run migrations, which means to quickly try to publish the current migrations.
    #
    # Use `bundle exec rake cms:migrate:publish` to publish your `rtc` workspace that holds the
    # latest unpublished migrations.
    #
    # To get you started, here is a list of the most common SDK methods to alter the CMS content.
    #
    # @example Create a new non-binary obj class named "Homepage" that has a "string" attribute named "locale".
    #   Scrivito::ObjClass.create(name: 'Homepage', is_binary: false, attributes: [
    #     {name: 'locale', type: :string}
    #   ])
    #
    # @example Find the obj class named "Homepage".
    #   Scrivito::ObjClass.find('Homepage')
    #
    # @example Update the "is_active" attribute of the obj class named "Homepage".
    #   Scrivito::ObjClass.find('Homepage').update(is_active: false)
    #
    # @example Add an "enum" attribute named "category" to the obj class named "Homepage".
    Scrivito::ObjClass.find('ImageWidget').attributes.add(name: 'css_class', type: :string)
    #
    # @example Update the "category" attribute and add another value.
    #   attribute = Scrivito::ObjClass.find('Homepage').attributes['category']
    #   attribute.update(values: attribute.values << 'media')
    #
    # @example Destroy the attribute "category" from the obj class "Homepage".
    #   Scrivito::ObjClass.find('Homepage').attributes['category'].destroy
  end
end
