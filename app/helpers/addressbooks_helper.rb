module AddressbooksHelper
  def gravatar_for(addressbook, options = { :size => 50 })
    gravatar_image_tag(addressbook.email.downcase, :alt => addressbook.nazwisko,
                                            :class => 'gravatar',
                                         :gravatar => options)
  end     
end

