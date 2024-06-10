namespace :delete do
  desc "Delete checks"
  task checks: :environment do
    Check.destroy_all
  end
end