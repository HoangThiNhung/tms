namespace :db do
  desc "Create sample datas for project"
  task rake_data: :environment do
    if Rails.env.production?
      puts "Not running in 'Production' task"
    else
      Rake::Task["db:migrate:reset"].invoke
      
      puts "Add instructor"
      Fabricate(:user)
    end
  end
end
