json.id pitch.id
json.title pitch.title
json.logline pitch.logline
json.genre pitch.genre
json.synopsis pitch.synopsis
json.producer_statement pitch.producer_statement
json.thematic_description pitch.thematic_description
json.visual_style_description pitch.visual_style_description
json.filmmaker_bio pitch.filmmaker_bio
json.characters pitch.characters.each do |character|
  json.id character.id
  json.first_name character.first_name
  json.last_name character.last_name
  json.description character.description
  json.image "https://cdn11.bigcommerce.com/s-nmernf2qen/stencil/47bbf000-ea64-0134-d24f-525400dfdca6/images/no-image.svg"
end
json.locations pitch.locations.each do |location|
  json.id location.id
  json.name location.name
  json.description location.description
  json.image "https://cdn11.bigcommerce.com/s-nmernf2qen/stencil/47bbf000-ea64-0134-d24f-525400dfdca6/images/no-image.svg"
end
json.musics pitch.musics
json.stuff @stuff
json.spotify_id pitch.SpotifyID
