class User < ApplicationRecord
  authenticates_with_sorcery!

  enum role: { user: 0, admin: 1 }
end
