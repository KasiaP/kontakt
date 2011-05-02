atom_feed do |feed|
  feed.title "Moje Kontakty"
  feed.updated @addressbooks.first.updated_at
  @addressbooks.each do |addressbook|
    feed.entry(addressbook) do |entry|
      entry.content addressbook.nazwisko, :type => "html"
    end
  end
end