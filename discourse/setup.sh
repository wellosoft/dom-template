# Discourse running on this VM is part of magic.
# By the official it only support Docker Container
# It has good reasoning actually

# Get to the directory
cd public_html
# Install deps
bundle install --path vendor/bundle
# Write secret
echo \'`rake secret`\' > config/initializers/100-secret_token.rb
# Precompile assets
rake assets:precompile
# Migrate DB
rake db:migrate
# Setup Admin, this must be done via SSH
# rake admin:create
# Next setup is email and sidekiq, contact admin