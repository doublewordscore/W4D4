# == Schema Information
#
# Table name: tracks
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  album_id   :integer          not null
#  bonus      :boolean          default(FALSE), not null
#  lyrics     :text
#  created_at :datetime
#  updated_at :datetime
#

class Track < ActiveRecord::Base

  belongs_to :album

  has_many :notes,
  class_name: 'Note',
  foreign_key: :track_id,
  primary_key: :id
end
