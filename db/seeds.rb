puts '🌱 Seeding data...'

Audition.create(
  actor: 'Miss.Piggy',
  location: 'New York City',
  phone: '2222222222',
  hired: false,
  role_id: 1,
)

Audition.create(
  actor: 'Oscar',
  location: 'New York City',
  phone: '0000000000',
  hired: true,
  role_id: 1,
)

Audition.create(
  actor: 'Big Bird',
  location: 'New York City',
  phone: '0000000000',
  hired: false,
  role_id: 2,
)

Audition.create(
  actor: 'Elmo',
  location: 'New York City',
  phone: '0000000000',
  hired: true,
  role_id: 2,
)

oscar = Role.create(character_name: 'Oscar')
elmo = Role.create(character_name: 'Elmo')

puts '🌱 Done Seeding data!'
