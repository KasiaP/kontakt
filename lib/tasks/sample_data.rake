require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    Addressbook.create!(:nazwisko => "Example",
                 :imie => "Jan",
                 :email => "example@railstutorial.org",
                 :adres => "Gdynia 34")
    99.times do |n|
      nazwisko  = Faker::Name.nazwisko
      imie = Faker::Name.imie
      email = "example-#{n+1}@railstutorial.org"
      Addressbook.create!(:nazwisko => nazwisko,
                   :imie => imie,
                   :email => email,
                   :adres => adres)
    end
  end
end