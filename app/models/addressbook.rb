class Addressbook < ActiveRecord::Base
attr_accessible :imie, :nazwisko, :email
def self.search(search)
  if search
    where('nazwisko LIKE ?', "%#{search}%")
  else
    scoped
  end
end
end
