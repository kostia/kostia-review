module ApplicationHelper
  def body_attributes(obj)
    attributes = {}

    if obj
      attributes['data-current-obj-path'] = obj.path

      if scrivito_editor_authenticated?
        attributes['data-current-user-email'] = current_user.try(:email)
        attributes['data-current-first-name'] = current_user.try(:first_name)
      end
    end

    attributes
  end
end
