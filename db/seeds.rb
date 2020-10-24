# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts
p 'Deleting all...'
puts

ActiveRecord::Base.connection.execute('DELETE FROM active_storage_attachments')
ActiveRecord::Base.connection.execute('DELETE FROM users')
ActiveRecord::Base.connection.execute('DELETE FROM articles')
ActiveRecord::Base.connection.execute('DELETE FROM characters')

p 'Creating characters...'
ActiveRecord::Base.connection.execute('ALTER TABLE characters AUTO_INCREMENT = 1')
Character.create!(
  [
    {
      name: 'mario', # id => 1
      full_name: 'Mario'
    },
    {
      name: 'dk', # id => 2
      full_name: 'Donkey Kong'
    },
    {
      name: 'link', # id => 3
      full_name: 'Link'
    },
    {
      name: 'samus', # id => 4
      full_name: 'Samus'
    },
    {
      name: 'samusd', # id => 5
      full_name: 'Dark Samus'
    },
    {
      name: 'yoshi', # id => 6
      full_name: 'Yoshi'
    },
    {
      name: 'kirby', # id => 7
      full_name: 'Kirby'
    },
    {
      name: 'fox', # id => 8
      full_name: 'Fox'
    },
    {
      name: 'pikachu', # id => 9
      full_name: 'Pikachu'
    },
    {
      name: 'luigi', # id => 10
      full_name: 'Luigi'
    },
    {
      name: 'ness', # id => 11
      full_name: 'Ness'
    },
    {
      name: 'captain', # id => 12
      full_name: 'Captain Falcon'
    },
    # {
    #   name: 'donkey-kong', # id => 2
    #   full_name: 'Donkey Kong'
    # },
    # {
    #   name: 'donkey-kong', # id => 2
    #   full_name: 'Donkey Kong'
    # },
    # {
    #   name: 'donkey-kong', # id => 2
    #   full_name: 'Donkey Kong'
    # },
    # {
    #   name: 'donkey-kong', # id => 2
    #   full_name: 'Donkey Kong'
    # },
    # {
    #   name: 'donkey-kong', # id => 2
    #   full_name: 'Donkey Kong'
    # },
    # {
    #   name: 'donkey-kong', # id => 2
    #   full_name: 'Donkey Kong'
    # },
    # {
    #   name: 'donkey-kong', # id => 2
    #   full_name: 'Donkey Kong'
    # },
    # {
    #   name: 'donkey-kong', # id => 2
    #   full_name: 'Donkey Kong'
    # },
    # {
    #   name: 'donkey-kong', # id => 2
    #   full_name: 'Donkey Kong'
    # },
    # {
    #   name: 'donkey-kong', # id => 2
    #   full_name: 'Donkey Kong'
    # },
    # {
    #   name: 'donkey-kong', # id => 2
    #   full_name: 'Donkey Kong'
    # },
    # {
    #   name: 'donkey-kong', # id => 2
    #   full_name: 'Donkey Kong'
    # },
    # {
    #   name: 'donkey-kong', # id => 2
    #   full_name: 'Donkey Kong'
    # },
    # {
    #   name: 'donkey-kong', # id => 2
    #   full_name: 'Donkey Kong'
    # },
    # {
    #   name: 'donkey-kong', # id => 2
    #   full_name: 'Donkey Kong'
    # },
    # {
    #   name: 'donkey-kong', # id => 2
    #   full_name: 'Donkey Kong'
    # },
    # {
    #   name: 'donkey-kong', # id => 2
    #   full_name: 'Donkey Kong'
    # },
    # {
    #   name: 'donkey-kong', # id => 2
    #   full_name: 'Donkey Kong'
    # },
    # {
    #   name: 'donkey-kong', # id => 2
    #   full_name: 'Donkey Kong'
    # },
    # {
    #   name: 'donkey-kong', # id => 2
    #   full_name: 'Donkey Kong'
    # },
  ]
)

c1 = Character.find(1)
c1.icon = c1.icon.attach(io: File.open(File.join(Rails.root, 'tmp/seeds/characters/mario.png')), filename: 'mario.png', content_type: 'image/png')

c2 = Character.find(2)
c2.icon = c2.icon.attach(io: File.open(File.join(Rails.root, 'tmp/seeds/characters/dk.png')), filename: 'dk.png', content_type: 'image/png')

c3 = Character.find(3)
c3.icon = c3.icon.attach(io: File.open(File.join(Rails.root, 'tmp/seeds/characters/link.png')), filename: 'link.png', content_type: 'image/png')

c4 = Character.find(4)
c4.icon = c4.icon.attach(io: File.open(File.join(Rails.root, 'tmp/seeds/characters/samus.png')), filename: 'samus.png', content_type: 'image/png')

c5 = Character.find(5)
c5.icon = c5.icon.attach(io: File.open(File.join(Rails.root, 'tmp/seeds/characters/samusd.png')), filename: 'samusd.png', content_type: 'image/png')

c6 = Character.find(6)
c6.icon = c6.icon.attach(io: File.open(File.join(Rails.root, 'tmp/seeds/characters/yoshi.png')), filename: 'yoshi.png', content_type: 'image/png')

c7 = Character.find(7)
c7.icon = c7.icon.attach(io: File.open(File.join(Rails.root, 'tmp/seeds/characters/kirby.png')), filename: 'kirby.png', content_type: 'image/png')

c8 = Character.find(8)
c8.icon = c8.icon.attach(io: File.open(File.join(Rails.root, 'tmp/seeds/characters/fox.png')), filename: 'fox.png', content_type: 'image/png')

c9 = Character.find(9)
c9.icon = c9.icon.attach(io: File.open(File.join(Rails.root, 'tmp/seeds/characters/pikachu.png')), filename: 'pikachu.png', content_type: 'image/png')

c10 = Character.find(10)
c10.icon = c10.icon.attach(io: File.open(File.join(Rails.root, 'tmp/seeds/characters/luigi.png')), filename: 'luigi.png', content_type: 'image/png')

c11 = Character.find(11)
c11.icon = c11.icon.attach(io: File.open(File.join(Rails.root, 'tmp/seeds/characters/ness.png')), filename: 'ness.png', content_type: 'image/png')

c12 = Character.find(12)
c12.icon = c12.icon.attach(io: File.open(File.join(Rails.root, 'tmp/seeds/characters/captain.png')), filename: 'captain.png', content_type: 'image/png')

p "#{Character.count} characters created"
puts

p ' '

p 'Creating users...'
ActiveRecord::Base.connection.execute('ALTER TABLE users AUTO_INCREMENT = 1')
User.create!(
  [
    {
      email: 'carloseam94@gmail.com', # id => 1
      full_name: 'Carlos Eduardo Aguilera Medina',
      username: 'carlos',
      password: 'Hero8.88',
      role: User::GOD,
      desc: 'Programador a tiempo completo y entusiasta de Smash. Main Lucina.',
      character_id: 1
    },
    {
      email: 'jorge@gmail.com', # id => 2
      full_name: 'Jorge Algo Algo',
      username: 'jorge',
      password: 'jorgito',
      role: User::GOD,
      desc: 'Samus, Link y Ness',
      character_id: 2
    },
    {
      email: 'amehddela@gmail.com', # id => 3
      full_name: 'Amehd Dela',
      username: 'amenohi',
      password: 'amenohi',
      role: User::ADMIN,
      desc: 'Ness is love, Ness is live',
      character_id: 1
    },
    {
      email: 'pushuu@gmail.com', # id => 4
      full_name: 'Pushuu Algo ALgo',
      username: 'pushuu',
      password: 'pushuu',
      role: User::MEMBER,
      desc: 'Marth y Robin, Fire Emblem Gang Unite!',
      character_id: 1
    },
    {
      email: 'randomuser@gmail.com', # id => 5
      full_name: 'Random User',
      username: 'random',
      password: 'random',
      desc: 'Entre aqui de casualidad y me cree una cuenta LOL',
      character_id: 1
    }
  ]
)

u1 = User.find(1)
u1.avatar = u1.avatar.attach(io: File.open(File.join(Rails.root, 'tmp/seeds/users/avatar1.jpg')), filename: 'avatar1.jpg', content_type: 'image/jpg')

u2 = User.find(2)
u2.avatar = u2.avatar.attach(io: File.open(File.join(Rails.root, 'tmp/seeds/users/avatar2.jpg')), filename: 'avatar2.jpg', content_type: 'image/jpg')

u3 = User.find(3)
u3.avatar = u3.avatar.attach(io: File.open(File.join(Rails.root, 'tmp/seeds/users/avatar3.jpg')), filename: 'avatar3.jpg', content_type: 'image/jpg')

u4 = User.find(4)
u4.avatar = u4.avatar.attach(io: File.open(File.join(Rails.root, 'tmp/seeds/users/avatar4.jpg')), filename: 'avatar4.jpg', content_type: 'image/jpg')

u5 = User.find(5)
u5.avatar = u5.avatar.attach(io: File.open(File.join(Rails.root, 'tmp/seeds/users/avatar5.jpg')), filename: 'avatar5.jpg', content_type: 'image/jpg')

p "#{User.count} users created"
puts

p ' '

p 'Creating articles...'
ActiveRecord::Base.connection.execute('ALTER TABLE articles AUTO_INCREMENT = 1')
Article.create!(
  [
    {
      title: 'Primer Articulo de la Comunidad Smash Habana',
      summary: 'Este es nuestro primer articulo, este en especifico es uno de prueba, creado desde el seed de la base de datos. En produccion seran generados de manera dinamica por los admin.',
      data: { time: 1_598_295_752_651, blocks: [{ type: 'header', data: { text: 'Titulo', level: 2 } }], version: '2.18.0' }.to_json,
      user_id: 1,
      seo_id: 'primer-articulo-smash-habana',
      status: Article::PUBLISHED,
      is_pinned: Article::UNPINNED,
      description: 'this is a description field to seo',
      category: Article::NEWS
    },
    {
      title: 'Segundo Articulo de la Comunidad Smash Habana',
      summary: 'Este es nuestro segundo articulo, este en especifico es uno de prueba, creado desde el seed de la base de datos. En produccion seran generados de manera dinamica por los admin.',
      data: { time: 1_598_295_752_651, blocks: [{ type: 'header', data: { text: 'Titulo', level: 2 } }], version: '2.18.0' }.to_json,
      user_id: 1,
      seo_id: 'segundo-articulo-smash-habana',
      status: Article::PUBLISHED,
      is_pinned: Article::UNPINNED,
      description: 'this is a description field to seo',
      category: Article::DISCUSSION
    },
    {
      title: 'Tercer Articulo de la Comunidad Smash Habana',
      summary: 'Este es nuestro tercer articulo, este en especifico es uno de prueba, creado desde el seed de la base de datos. En produccion seran generados de manera dinamica por los admin.',
      data: { time: 1_598_295_752_651, blocks: [{ type: 'header', data: { text: 'Titulo', level: 2 } }], version: '2.18.0' }.to_json,
      user_id: 1,
      seo_id: 'tercer-articulo-smash-habana',
      status: Article::PUBLISHED,
      is_pinned: Article::UNPINNED,
      description: 'this is a description field to seo',
      category: Article::NEWS
    },
  ]
)

a1 = Article.find(1)
a1.cover = a1.cover.attach(io: File.open(File.join(Rails.root, 'tmp/seeds/articles/cover1.jpg')), filename: 'cover1.jpg', content_type: 'image/jpg')

p "#{Article.count} articles created"
puts

# p 'Creating images...'
# ActiveRecord::Base.connection.execute('ALTER TABLE images AUTO_INCREMENT = 1')

# Image.create!(
#   [
#     {
#       name: 'image1.jpg', # id => 1
#       info: 'This is the info for the first image.',
#       cover_metadata: '{"left":0,"top":0,"width":1440,"height":1002.25,"naturalWidth":1440,"naturalHeight":1055}',
#       cover_metadata_mobile: '{"left":0,"top":0,"width":700,"height":1002.25,"naturalWidth":700,"naturalHeight":1055}',
#       category: Article::HISTORY,
#       cover_opacity: 0.76
#     },
#   ]
# )

# img1 = Image.find(1)
# img1.cover.attach(io: File.open(File.join(Rails.root, 'tmp/seeds/image1.jpg')), filename: 'image1.jpg', content_type: 'image/jpg')

# p "#{Image.count} images created"
# puts

# p 'Creating comments...'

# ActiveRecord::Base.connection.execute('ALTER TABLE comments AUTO_INCREMENT = 1')

# Comment.create!(
#   [
#     {
#       article_id: 1,
#       user_id: 1,
#       likes: 12,
#       content: 'Muchas gracias por la lectura, me resulto interesante de principio a fin. Espero con ansias leer su proximo articulo.',
#     },
#     {
#       article_id: 1,
#       user_id: 2,
#       likes: 7,
#       content: 'Genial escritura! Camaguey es una provincia cargado de historia y muy rica en valores patrimoniales, me alegra mucho contar con un sitio como este para mostrarle al mundo estas riquezas.',
#     },
#     {
#       article_id: 1,
#       user_id: 1,
#       likes: 0,
#       content: 'En mis proximas vacaciones estare viajando a Camaguey!',
#     },
#     {
#       article_id: 2,
#       user_id: 3,
#       likes: 1,
#       content: 'Muy interesantes los datos historicos expuestos.',
#     }
#   ])

# p "#{Comment.count} comments created"
# puts
