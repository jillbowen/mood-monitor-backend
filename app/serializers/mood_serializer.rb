class MoodSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :happy_rating, :relaxed_rating, :calm_rating, :confidence_rating, :awake_rating, :journal_entry, :day_id

  def created_at
    self.object.created_at.strftime("%I:%M%p")
  end
end
