module Morphology
  module Novegradian
    module Verbs
      module Neoacute
        def neoacute(base)
          base.gsub(/(.*)о/, '\1у')
              .gsub(/(.*)уш/, '\1ус')
              .gsub(/(.*)уж/, '\1уз')
              .gsub(/(.*)уу/, '\1уў')
        end

        def neoacute_transliterated(base)
          base.gsub(/(.*)(o|ó)/) do |match|
            if match[-1] == 'o'
              "#{$1}u"
            elsif match[-1] == 'ó'
              "#{$1}ú"
            end
          end.gsub(/(.*[uú])ś/, '\1s')
             .gsub(/(.*[uú])ź/, '\1z')
             .gsub(/(.*[uú])u/, '\1w')
        end
      end
    end
  end
end
