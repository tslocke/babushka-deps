dep "rails-db-configured.mysql" do
  requires 'mysql.gem', 'mysql access'
  met? { File.directory? var(:rails_root) / 'config/database.yml' }
  meet {
    render_erb "rails/database.yml.erb", :to => "#{var :rails_root}/config/database.yml", :perms => '755'
  }
end