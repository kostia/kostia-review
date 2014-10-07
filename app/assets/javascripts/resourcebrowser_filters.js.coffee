$ ->
  # Define available filters for the resource browser.
  #
  # Each filter is composed of a name, a title, an icon and a search query that gets executed, when
  # the filter is activated. The icon is a CSS class used to describe a font icon. If the icon is
  # omitted a generic icon is used. Look at the various editors that open the resource browser for
  # more details on how to restrict the available list of filters by using their name.
  #
  # Examples:
  #
  # Creates a filter that only displays all objects that have the object class "Image".
  #   {
  #     images: {
  #       title: 'Images',
  #       icon: 'editing-icon-image',
  #       query: scrivito.obj_where('_obj_class', 'equals', 'Image')
  #     }
  #   }
  Resourcebrowser.filters = $.extend {}, Resourcebrowser.filters,
    'images':
      title: 'Images'
      query: scrivito.obj_where('_obj_class', 'equals', 'Image')
      icon: 'editing-icon-image'
    'videos':
      title: 'Videos'
      query: scrivito.obj_where('_obj_class', 'equals', 'Video')
    'error_pages':
      title: 'Error Pages'
      query: scrivito.obj_where('_obj_class', 'equals', 'ErrorPage')
