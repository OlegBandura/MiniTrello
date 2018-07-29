# dashboard model
class Dashboard < ApplicationRecord
  enum policy: %I[
    public
    private
  ]
end
