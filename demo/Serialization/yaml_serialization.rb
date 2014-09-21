require 'yaml'

schedule = [
             {name: 'Soumya', id: '4985', days: ['M', 'F']},
             {name: 'Galit',  id: '5483', days: ['T', 'W']}
           ]

# Serialize the data
File.open('teaching.yml', 'w') do |file|
  file.puts teaching.to_yaml
end

# Deserialize the data
teaching = YAML::load(File.read('teaching.yml'))
