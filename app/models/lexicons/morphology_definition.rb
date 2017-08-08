module Lexicons
  class MorphologyDefinition < ActiveRecord::Base
    def self.categories_for_lexicon(lexicon)
      query = where(:lexicon_id => lexicon.id)
                .where.not(:category_key => nil)
                .select(:category, :category_key)
                .distinct
      query.map do |r|
        {
          label: r.category,
          key: r.category_key
        }
      end
    end

    def self.groups_for_lexicon(lexicon)
      query = where(:lexicon_id => lexicon.id)
                .where.not(:group_key => nil)
                .select(:group, :group_key, :category_key)
                .distinct
      query.map do |r|
        {
          label: r.group,
          key: r.group_key,
          category_prerequisite: r.category_key
        }
      end
    end

    def self.subgroups_for_lexicon(lexicon)
      query = where(:lexicon_id => lexicon.id)
                .where.not(:subgroup_key => nil)
                .select(:subgroup, :subgroup_key, :group_key, :category_key)
                .distinct
      query.map do |r|
        {
          label: r.subgroup,
          key: r.subgroup_key,
          group_prerequisite: r.group_key,
          category_prerequisite: r.category_key
        }
      end
    end

    def self.flags_for_lexicon(lexicon)
      query = where(:lexicon_id => lexicon.id)
                .where.not(:flag_key => nil)
                .select(:flag, :flag_key, :category_key)
                .distinct
      query.map do |r|
        {
          label: r.flag,
          key: r.flag_key,
          category_prerequisite: r.category_key
        }
      end
    end
  end
end
