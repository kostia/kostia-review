class Image < Obj
  # Indicate the resource browser, that objects of this type are images
  # that can have a URL that suitable for img tags.
  def image?
    true
  end

  def description_for_editor
    try(:headline) || super
  end
end
