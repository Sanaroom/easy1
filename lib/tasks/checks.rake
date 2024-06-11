namespace :checks do
  desc "Clean up old checks data"
  task clean_up: :environment do
    Check.where("created_at < ?", Date.today).destroy_all
  end
end
