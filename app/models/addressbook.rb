class Addressbook < ActiveRecord::Base
attr_accessible :imie, :nazwisko, :email, :adres
validates_presence_of :nazwisko, :imie, :email 
def self.search(search)
  if search
    where('nazwisko LIKE ?', "%#{search}%")
  else
    scoped
  end
end
end
