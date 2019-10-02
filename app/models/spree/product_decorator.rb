module Spree
  module ProductDecorator
    def self.prepended(base)
      base.alias_method :amount=, :price=
    end
  end
end

::Spree::Product.prepend ::Spree::ProductDecorator
