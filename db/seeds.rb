# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do 

  User.destroy_all
  admin = User.create!(email: "admin@feathernote.com", password: "password")
  user1 = User.create!(email: "user1@user.com", password: "password")
  user2 = User.create!(email: "user2@user.com", password: "password")

  Notebook.destroy_all
  notebook1 = Notebook.create!(title: "Notebook1", owner_id: admin.id)
  notebook2 = Notebook.create!(title: "Notebook2", owner_id: admin.id)
  notebook3 = Notebook.create!(title: "Notebook3", owner_id: user1.id)
  notebook4 = Notebook.create!(title: "Notebook4", owner_id: user2.id)

  Note.destroy_all
  note1 = Note.create!(title: "Note1", body: '{"ops":[{"insert":"\n"},{"attributes":{"bold":true},"insert":"Johannes Kepler"},{"insert":" ("},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Help:IPA/English"},"insert":"/ˈkɛplər/"},{"insert":";"},{"attributes":{"script":"super","color":"#0b0080","link":"https://en.wikipedia.org/wiki/Johannes_Kepler#cite_note-1"},"insert":"[1]"},{"insert":" German: "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Help:IPA/Standard_German"},"insert":"[joˈhanəs ˈkɛplɐ, -nɛs -]"},{"insert":";"},{"attributes":{"script":"super","color":"#0b0080","link":"https://en.wikipedia.org/wiki/Johannes_Kepler#cite_note-2"},"insert":"[2]"},{"attributes":{"script":"super","color":"#0b0080","link":"https://en.wikipedia.org/wiki/Johannes_Kepler#cite_note-3"},"insert":"[3]"},{"insert":" December 27, 1571 – November 15, 1630) was a German "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Astronomer"},"insert":"astronomer"},{"insert":", "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Mathematician"},"insert":"mathematician"},{"insert":", and "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Astrologer"},"insert":"astrologer"},{"insert":". He is a key figure in the 17th-century "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Scientific_revolution"},"insert":"scientific revolution"},{"insert":", best known for his "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Kepler%27s_laws_of_planetary_motion"},"insert":"laws of planetary motion"},{"insert":", and his books "},{"attributes":{"italic":true,"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Astronomia_nova"},"insert":"Astronomia nova"},{"insert":", "},{"attributes":{"italic":true,"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Harmonices_Mundi"},"insert":"Harmonices Mundi"},{"insert":", and "},{"attributes":{"italic":true,"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Epitome_Astronomiae_Copernicanae"},"insert":"Epitome Astronomiae Copernicanae"},{"insert":". These works also provided one of the foundations for "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Isaac_Newton"},"insert":"Newton"},{"insert":"\'s theory of "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Newton%27s_law_of_universal_gravitation"},"insert":"universal gravitation"},{"insert":".\nKepler was a mathematics teacher at a "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Seminary"},"insert":"seminary"},{"insert":" school in "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Graz"},"insert":"Graz"},{"insert":", where he became an associate of "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Hans_Ulrich_von_Eggenberg"},"insert":"Prince Hans Ulrich von Eggenberg"},{"insert":". Later he became an assistant to the astronomer "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Tycho_Brahe"},"insert":"Tycho Brahe"},{"insert":" in "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Prague"},"insert":"Prague"},{"insert":", and eventually the imperial mathematician to "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Rudolf_II,_Holy_Roman_Emperor"},"insert":"Emperor Rudolf II"},{"insert":" and his two successors "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Matthias,_Holy_Roman_Emperor"},"insert":"Matthias"},{"insert":" and "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Ferdinand_II,_Holy_Roman_Emperor"},"insert":"Ferdinand II"},{"insert":". He also taught mathematics in "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Linz"},"insert":"Linz"},{"insert":", and was an adviser to "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Albrecht_von_Wallenstein"},"insert":"General Wallenstein"},{"insert":". Additionally, he did fundamental work in the field of "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Optics"},"insert":"optics"},{"insert":", invented an improved version of the "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Refracting_telescope"},"insert":"refracting (or Keplerian) telescope"},{"insert":", and was mentioned in the "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Telescope"},"insert":"telescopic"},{"insert":" discoveries of his contemporary "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Galileo_Galilei"},"insert":"Galileo Galilei"},{"insert":". He was a corresponding member of the "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Accademia_dei_Lincei"},"insert":"Accademia dei Lincei"},{"insert":" in Rome."},{"attributes":{"script":"super","color":"#0b0080","link":"https://en.wikipedia.org/wiki/Johannes_Kepler#cite_note-4"},"insert":"[4]"},{"insert":"\nKepler lived in an era when there was no clear distinction between "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Astronomy"},"insert":"astronomy"},{"insert":" and "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Astrology"},"insert":"astrology"},{"insert":", but there was a strong division between astronomy (a branch of "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Quadrivium"},"insert":"mathematics"},{"insert":" within the "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Liberal_arts"},"insert":"liberal arts"},{"insert":") and "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Physics"},"insert":"physics"},{"insert":" (a branch of "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Natural_philosophy"},"insert":"natural philosophy"},{"insert":"). Kepler also incorporated religious arguments and reasoning into his work, motivated by the religious conviction and belief that God had created the world according to an intelligible plan that is accessible through the natural light of "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Reason"},"insert":"reason"},{"insert":"."},{"attributes":{"script":"super","color":"#0b0080","link":"https://en.wikipedia.org/wiki/Johannes_Kepler#cite_note-5"},"insert":"[5]"},{"insert":" Kepler described his new astronomy as \"celestial physics\","},{"attributes":{"script":"super","color":"#0b0080","link":"https://en.wikipedia.org/wiki/Johannes_Kepler#cite_note-6"},"insert":"[6]"},{"insert":" as \"an excursion into "},{"attributes":{"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Aristotle"},"insert":"Aristotle"},{"insert":"\'s "},{"attributes":{"italic":true,"color":"#0b0080","link":"https://en.wikipedia.org/wiki/Metaphysics_(Aristotle)"},"insert":"Metaphysics"},{"insert":"\","},{"attributes":{"script":"super","color":"#0b0080","link":"https://en.wikipedia.org/wiki/Johannes_Kepler#cite_note-7"},"insert":"[7]"},{"insert":" and as \"a supplement to Aristotle\'s "},{"attributes":{"italic":true,"color":"#0b0080","link":"https://en.wikipedia.org/wiki/On_the_Heavens"},"insert":"On the Heavens"},{"insert":"\","},{"attributes":{"script":"super","color":"#0b0080","link":"https://en.wikipedia.org/wiki/Johannes_Kepler#cite_note-8"},"insert":"[8]"},{"insert":" transforming the ancient tradition of physical cosmology by treating astronomy as part of a universal mathematical physics."},{"attributes":{"script":"super","color":"#0b0080","link":"https://en.wikipedia.org/wiki/Johannes_Kepler#cite_note-9"},"insert":"[9]"},{"insert":"\n"}]}', notebook_id: notebook1.id)
  note2 = Note.create!(title: "Note2", body: '{"ops":[{"attributes":{"bold":true},"insert":"bold"},{"insert":"\n"},{"attributes":{"italic":true},"insert":"italic"},{"insert":"\n"},{"attributes":{"link":"asdf"},"insert":"lin"},{"insert":"k\nh1"},{"attributes":{"header":1},"insert":"\n"},{"insert":"h2"},{"attributes":{"header":2},"insert":"\n"}]}', notebook_id: notebook2.id)
  note3 = Note.create!(title: "Note3", body: '{"ops":[{"attributes":{"bold":true},"insert":"bold"},{"insert":"\n"},{"attributes":{"italic":true},"insert":"italic"},{"insert":"\n"},{"attributes":{"link":"asdf"},"insert":"lin"},{"insert":"k\nh1"},{"attributes":{"header":1},"insert":"\n"},{"insert":"h2"},{"attributes":{"header":2},"insert":"\n"}]}', notebook_id: notebook3.id)
  note4 = Note.create!(title: "Note4", body: '{"ops":[{"insert":"Hello!\n"}]}', notebook_id: notebook4.id)
  note5 = Note.create!(title: "Note5", body: '{"ops":[{"insert":"Hello!\n"}]}', notebook_id: notebook4.id)
  note6 = Note.create!(title: "Note6", body: '{"ops":[{"insert":"Hello!\n"}]}', notebook_id: notebook1.id)
  
end