//= require jquery
//= require jquery_ujs
//= require scrivito
//= require scrivito_editors
//= require scrivito_content_browser
//= require jquery.minicolors
//= require moment
//= require_tree .
//= require_self

scrivito.on('content', function(content) {
  _.each($(content).find('.colorpicker'), function(colorpicker) {
    $(colorpicker).minicolors({theme: 'bootstrap', change: function(color) {
      $(colorpicker).text(color).scrivito('save', color);
    }}).minicolors('value', $(colorpicker).text());
  });
});
