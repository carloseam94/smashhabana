# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

Rails.application.config.assets.paths << Rails.root.join('node_modules')

# css
Rails.application.config.assets.precompile += ['bootstrap/bootstrap.min.css']
Rails.application.config.assets.precompile += ['bootstrap/pluggins/_carousel.css']
Rails.application.config.assets.precompile += ['login/style.css']
Rails.application.config.assets.precompile += ['page_loader.css']
Rails.application.config.assets.precompile += ['font-awesome/css/font-awesome.css']
Rails.application.config.assets.precompile += ['image-picker.css']


# js
Rails.application.config.assets.precompile += ['jquery/jquery.min.js']
Rails.application.config.assets.precompile += ['bootstrap/bootstrap.bundle.min.js']
Rails.application.config.assets.precompile += ['image-picker.js']
