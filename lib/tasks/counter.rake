namespace :db do
  namespace :counter_cache do
    desc 'Update all cache counters'
    task refresh: :environment do
      models_to_update = {}

      # or: Rails.application.eager_load!
      # Dir loads less, so it's faster
      Dir.glob(Rails.root.join('app', 'models', '**', '*')).
        each { |model| require model if File.file?(model) }

      # as a convention, cache counter column name must begin with assotiacion's name
      # and end with '_count' suffix,
      # e.g. 'comments_count', 'posts_count'
      ActiveRecord::Base.descendants.each do |model|
        next unless model.table_exists?
        cache_counters =
          model.column_names.select { |n| n.end_with?('_count') }.
          map { |n| n.gsub(/_count\z/, '').to_sym }
        # check if association is exists
        cache_counters.select! { |c| model.reflect_on_association(c) }
        models_to_update[model] = cache_counters unless cache_counters.empty?
      end

      models_to_update.each do |model, counters|
        model.select(:id).find_each do |record|
          model.reset_counters record.id, *counters
        end
      end
    end
  end
end
