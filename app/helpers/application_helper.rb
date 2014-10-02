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

  def simpsons_thumbnail_image2
    image_tag(
      'http://img4.wikia.nocookie.net/__cb20110111170457/simpsons/images/0/0a/Simpsons_Homer-Lisa.jpg',
      height: '100px',
      width: 'auto'
    )
  end

  def simpsons_thumbnail_image1
    image_tag(
      'http://www.destinationcreation.com/informatives/wp-content/uploads/2009/10/simpsons_zombies_125b.thumbnail.jpg',
      height: '100px',
      width: 'auto'
    )
  end

  def simpsons_thumbnail_image3
    image_tag(
      'http://dc716.4shared.com/img/fx2HVStk/s3/12146245a00/Duff_Beer_-_The_Simpsons.png',
      height: '100px',
      width: 'auto'
    )
  end

  def simpsons_thumbnail_image4
    image_tag(
      'https://lh6.googleusercontent.com/-fgAHp01Bhqo/AAAAAAAAAAI/AAAAAAAAOmE/92LSmfEN0PQ/photo.jpg',
      height: '100px',
      width: 'auto'
    )
  end
end
