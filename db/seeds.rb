Addressbook.create!([
                 { :imie => 'Ania',
    :nazwisko => 'Blumental',
    :email => 'fantasy@wp.pl',
                   :adres=>'Warszawa Litwina 20'},
] )


Addressbook.create!([
                     { :imie => 'Andrzej',
    :nazwisko => 'Lenart',
    :email => 'fajowa@wp.pl',
                       :adres=>'Gdynia Bitwina 20'},
] )
Addressbook.create!([
                     { :imie => 'Beata',
    :nazwisko => 'Wraca',
    :email => 'dobeatyy@wp.pl',
                       :adres=>'Lublin Miraska 210'},
] )
Addressbook.create!([
                     { :imie => 'Bogdan',
    :nazwisko => 'Cecyles',
    :email => 'cecyles@wp.pl',
                       :adres=>'Nawra Pingwina 20'},
] )
Addressbook.create!([
                     { :imie => 'Celina',
    :nazwisko => 'Malina',
    :email => 'malina@wp.pl',
                       :adres=>'Witomino Gratki 3/ 20'},
] )
Addressbook.create!([
                     { :imie => 'Cyprian',
    :nazwisko => 'Blumentstal',
    :email => 'cypek@wp.pl',
                       :adres=>'Stalowa Wola 12'},
] )
Addressbook.create!([
                     { :imie => 'Dorota',
    :nazwisko => 'Gralska',
    :email => 'ddaantasy@wp.pl',
                       :adres=>'Warszawa Mluka 20'},
] )
Addressbook.create!([
                     { :imie => 'Ania',
    :nazwisko => 'Blumental',
    :email => 'fantasy@wp.pl',
                       :adres=>'Warszawa Litwina 20'},
] )
Addressbook.create!([
                     { :imie => 'Bronek',
    :nazwisko => 'Amsterdam',
    :email => 'asy@wp.pl',
                       :adres=>'Rewa rywina 20'},
] )
Addressbook.create!([
                     { :imie => 'Ania',
    :nazwisko => 'antczak',
    :email => 'wygibasyasy@wp.pl',
                       :adres=>'Wrocek Stalwina 40'},
] )

#0.upto(10).each { |x| Addressbook.create(:imie => "Ela", :nazwisko => "Gazela"#, :email => "mala@wp.pl") }
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
