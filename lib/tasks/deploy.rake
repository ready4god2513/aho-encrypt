require 'paratrooper'

namespace :deploy do
  desc 'Deploy app in production environment'
  task :production do
    deployment = Paratrooper::Deploy.new("aho-encryptor")
    deployment.deploy
  end
end