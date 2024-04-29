class Slide < ApplicationRecord
    enum status: { public: 0, private: 1 }
end
