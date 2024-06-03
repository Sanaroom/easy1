namespace :check do
  desc "Delete checks older than one day"
  task delete_old: :environment do
    Check.where('created_at < ?', 1.day.ago).destroy_all
    puts "Old checks deleted successfully"
  end
end