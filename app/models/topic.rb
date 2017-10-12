class Topic < ApplicationRecord
  has_one :user

  def disply_status
    {"0" => "未审核", "1" => "审核不通过"}["#{status}"]
  end
end
