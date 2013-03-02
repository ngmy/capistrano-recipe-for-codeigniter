set :application, "my.domain.com"
set :deploy_to, "/home/httpd/#{application}"
set :repository, "http://path_to_myproject"
set :scm, :subversion
set :use_sudo, false

role :web, "myhostname"

after "deploy", "deploy:create_app_symlink"
after "deploy:setup", "deploy:chown_log_dir"

namespace :deploy do
  task :create_app_symlink, :roles => :web do
    run "rm -f #{deploy_to}/application; ln -s #{deploy_to}/current/application #{deploy_to}/application"
    run "rm -f #{deploy_to}/html; ln -s #{deploy_to}/current/html #{deploy_to}/html"
    run "rm -f #{deploy_to}/system; ln -s #{deploy_to}/current/system #{deploy_to}/system"
  end

  task :chown_log_dir, :roles => :web do
    run "sudo chown httpd #{deploy_to}/shared/log"
  end
end
