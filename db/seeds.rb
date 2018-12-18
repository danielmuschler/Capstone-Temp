# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

User.create!(
  email:"daniel@email.com",
  password: "password"
  )

User.create!(
  email:"david@email.com",
  password: "password"
)

User.create!(
  email:"steven@email.com",
  password: "password"
)


Pitch.create!(
  title:"Harry, Sally, and the Gladiators",
  logline:"When Harry Meets Sally meets Gladiator",
  genre:"Historical Epic",
  synopsis:"A guy and a girl meet in sword and stone era at the Colliseum",
  producer_statement:"This is your classic Romeo and Juliet tale told through the lense of sword and stone epics and must be done right.",
  thematic_description:"Opposites attract?",
  visual_style_description:"Gladiator with the golden hues meets lush blues and reds",
  filmmaker_bio:"My name is Steven and I have wrote and directed such films as Sword and the Stone 2; and Love is a Battlefield Earth.",
  user_id: 3
  )

Pitch.create!(
  title:"The Twitter Conundrum",
  logline:"A tweet causes and economic collapse.",
  genre:"Drama",
  synopsis:"An anonynous Twitter user tweets information about the Prime Minister of England that begins an economic downturn the world has never seen before.",
  producer_statement:"This movie needs to be made because our current climet and time must take a look at how social media and the economies of scale work and overlap with each other.",
  thematic_description:"How does social media impact us in minute and major ways.",
  visual_style_description:"Dark grays and blues will dominate the style of this movie. The camera will constantly be in motion for reference see The Social Network and There Will Be Blood",
  filmmaker_bio:"My name is Daniel and I have wrote and directed such films as The Social Network 2; and How do I live Off-the-Grid.",
  user_id: 1
  )

Pitch.create!(
  title:"My Cellphone is Alive",
  logline:"A Cellphone comes alive to eat people",
  genre:"Horror",
  synopsis:"A cellphone becomes centient and eats people causing mass panic around a small midwestern town.",
  producer_statement:"This will be a fun horror movie in the current age of small indie horror films that will comment on tech taking over our lives",
  thematic_description:"How does technology and the phones in our pockets take over our lives and literally consume our daily functioning being",
  visual_style_description:"Imagine it follows but a cell phone instead of a mysterious person...",
  filmmaker_bio:"My name is David and I have wrote and directed such films as It Follows Me; and Computers at my Homework.",
  user_id: 2
  )

Pitch.create!(
  title:"West Side Connection",
  logline:"Daft Punk concert documentary",
  genre:"Documentary",
  synopsis:"Daft Punk plays a live concert on the west side of Chicago and this documents the prep and the show itself",
  producer_statement:"This will be the first Daft Punk documentary ever made and will show who they really are for the first time",
  thematic_description:"We will explore the emotions of what it means to be an anonymous musicion in the days of social media and branding",
  visual_style_description:"Taking cues from the live version of The Wall ",
  filmmaker_bio:"My name is Daniel and I have wrote and directed such films as The Social Network 2; and How do I live Off-the-Grid.",
  user_id: 1
  )

Character.create!(
  first_name:"Brad",
  last_name:"Pitt",
  description:"A dapper gentleman who discovers love in Roman times.",
  pitch_id: 1
    )

Character.create!(
  first_name:"Jennifer",
  last_name:"Lopez",
  description:"A flapper girl looking for love in all the wrong places.",
  pitch_id: 1
    )

Character.create!(
  first_name:"Jack",
  last_name:"White",
  description:"The CEO of Twitter.",
  pitch_id: 2
    )

Character.create!(
  first_name:"Uma",
  last_name:"Thurman",
  description:"The Prime Minister of England.",
  pitch_id: 2
    )

Character.create!(
  first_name:"Nicole",
  last_name:"Kidman",
  description:"Psychiatrist to Batman.",
  pitch_id: 3
    )

Character.create!(
  first_name:"Matt",
  last_name:"Damon",
  description:"Detective",
  pitch_id: 3
    )

Character.create!(
  first_name:"George",
  last_name:"Clooney",
  description:"DJ",
  pitch_id: 4
    )

Character.create!(
  first_name:"Taylor",
  last_name:"Swift",
  description:"Video Disc Jockey",
  pitch_id: 4
    )

Location.create!(
  name:"Rome",
  description:"Capital city of Italy where the entire plot takes place.",
  pitch_id: 1
  )

Location.create!(
  name:"Roman Coliseum",
  description:"In Rome, where a lof of the main climax of the movie takes place.",
  pitch_id: 1
  )

Location.create!(
  name:"London",
  description:"Capital of England where most of the movie takes place",
  pitch_id: 2
  )

Location.create!(
  name:"Palace of Westminster",
  description:"London Parliament where England governs.",
  pitch_id: 2
  )

Location.create!(
  name:"Des Moines, Iowa",
  description:"Capital of Iowa, USA",
  pitch_id: 3
  )

Location.create!(
  name:"Seattle, Washington",
  description:"A city in the Northwest United States",
  pitch_id: 3
  )

Location.create!(
  name:"Paris",
  description:"Capital of France",
  pitch_id: 4
  )

Location.create!(
  name:"Sydney Opera House",
  description:"Opera House in Sydney, Australia",
  pitch_id: 4
  )

Music.create!(
  name:"Love is a Battlefield",
  artist:"Pat Benetar",
  description:"Opens and closes the movie and acousticly plays over key plot points",
  pitch_id: 1
  )

Music.create!(
  name:"God Save the Queen",
  artist:"Queen",
  description:"Performed at A Night at the Opera",
  pitch_id: 2
  )

Music.create!(
  name:"Digital Witness",
  artist:"St. Vincent",
  description:"If I can't show it and you can't see me, what's the point of doing anything?",
  pitch_id: 3
  )

Music.create!(
  name:"Daft Punk is Playing at My House",
  artist:"LCD Soundsystem",
  description:"Daft Punk plays in a persons house to open the movie",
  pitch_id: 4
  )


