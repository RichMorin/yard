module YARD
  module Generators
    class InheritanceGenerator < Base
      before_generate :has_inheritance_tree?
      
      def sections_for(object) [:header] end
        
      protected
      
      def has_inheritance_tree?(object)
        return false unless object.is_a?(CodeObjects::ClassObject)
        object.inheritance_tree.size > 1
      end
    end
  end
end