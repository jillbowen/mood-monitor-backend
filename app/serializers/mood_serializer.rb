class MoodSerializer < ActiveModel::Serializer
  attributes :id, :happy_rating, :relaxed_rating, :calm_rating, :confidence_rating, :awake_rating, :journal_entry, :day_id
end
