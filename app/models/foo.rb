# == Schema Information
#
# Table name: foos
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Foo < ActiveRecord::Base
end
