json.extract! profile, :id, :age, :height_in_inches, :gender, :description, :hobbies, :books, :shows, :fitness_level, :occupation, :created_at, :updated_at
json.url profile_url(profile, format: :json)