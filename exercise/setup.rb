load File.expand_path("../config/environment.rb", __dir__)

Movie.destroy_all
Director.destroy_all
Genre.destroy_all

Director.create!([
  {name: 'Francis Coppolla'},
  {name: 'Brett Ratner'},
  {name: 'Antonie Fuqua'},
  {name: 'Spike Lee'},
  {name: 'Steven Spielberg'},
  {name: 'Oren Peli'}
].shuffle)

Genre.create!([
  {name: 'Crime/Drama'},
  {name: 'Action/Comedy'},
  {name: 'Crime/Thriller'},
  {name: 'Science Fiction'},
  {name: 'Horror'}
].shuffle)

Movie.create!([
  {title: 'The Godfather', year: '1972', director: Director.find_by(name: 'Francis Coppolla'), genre: Genre.find_by(name: 'Crime/Drama')},
  {title: 'The Godfather: Part II', year: '1974', director: Director.find_by(name: 'Francis Coppolla'), genre: Genre.find_by(name: 'Crime/Drama')},
  {title: 'The Godfather: Part III', year: '1990', director: Director.find_by(name: 'Francis Coppolla'), genre: Genre.find_by(name: 'Crime/Drama')},
  {title: 'Rush Hour', year: '1998', director: Director.find_by(name: 'Brett Ratner'), genre: Genre.find_by(name: 'Action/Comedy')},
  {title: 'Rush Hour 2', year: '2001', director: Director.find_by(name: 'Brett Ratner'), genre: Genre.find_by(name: 'Action/Comedy')},
  {title: 'Rush Hour 3', year: '2007', director: Director.find_by(name: 'Brett Ratner'), genre: Genre.find_by(name: 'Action/Comedy')},
  {title: 'Training Day', year: '2001', director: Director.find_by(name: 'Antonie Fuqua'), genre: Genre.find_by(name: 'Crime/Thriller')},
  {title: 'Inside Man', year: '2006', director: Director.find_by(name: 'Spike Lee'), genre: Genre.find_by(name: 'Crime/Thriller')},
  {title: 'Jurrassic Park', year: '1993', director: Director.find_by(name: 'Steven Spielberg'), genre: Genre.find_by(name: 'Science Fiction')},
  {title: 'Paranormal Activity', year: '2007', director: Director.find_by(name: 'Oren Peli'), genre: Genre.find_by(name: 'Horror')}
].shuffle)

def right
  "\e[32mRIGHT\e[0m"
end

def wrong
  "\e[31mWRONG\e[0m"
end

def title(str)
  "\e[33m#{str}\e[0m"
end
