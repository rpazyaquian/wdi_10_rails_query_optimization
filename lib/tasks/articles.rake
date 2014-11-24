namespace :articles do
  desc "Resets comments cache for articles"
  task reset_counter_cache: :environment do
    Article.all.each { |article| Article.reset_counters(article.id, :comments) }
  end

end
