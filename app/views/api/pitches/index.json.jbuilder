json.array! @pitches.each do |pitch|
  json.partial! "pitch.json.jbuilder", pitch: pitch
end
