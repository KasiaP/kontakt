platitudes = File.readlines(Rails.root.join('db', 'platitudes.u8'), "\n%\n")
platitudes.map do |p|
  reg = /\t?(.+)\n\t\t--\s*(.*)\n%\n/m
  m = p.match(reg)
  if m
    Addressbook.create :imie => m[1], :nazwisko => m[2]
  else
   Addressbook.create :imie => p[0..-4], :nazwisko => Faker::Name.name
  end
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
