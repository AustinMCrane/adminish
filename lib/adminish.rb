module Adminish

  class Admin
    def initialize(models=[])
      @models = []
      models.each do |model|
        @models.push(Model.new(model,
        {
          index: "/#{model.name.downcase.pluralize}/",
          show: "/#{model.name.downcase.pluralize}/:id",
          create: "/#{model.name.downcase.pluralize}/",
          update: "/#{model.name.downcase.pluralize}/:id",
          delete: "/#{model.name.downcase.pluralize}/:id"
        }
        ))
      end
    end
  end

  class Model
    def initialize(model, crud = {})
      @title = hm_readable_class(model.name)
      @tag = class_tag(model.name)
      # if crud == {}
      #   # generate crud stuff
      #   # @crud = urls_for_model(model)
      # else
        @crud = crud
      # end
      @attributes = []
      model.columns.each do |atr|
        if is_white_listed(atr.name)
          @attributes.push({tag: atr.name, title: atr.name.gsub("_", " "), type: atr.type})
        end
      end
      puts self.to_yaml
    end

    private

    def is_white_listed(model_name)
      true
    end

    # generates a human readable title for the model name
    def hm_readable_class(model_name)
      # replace _ with spaces
      # replace cammal case with something readable PostIt to Post It
      model_name.gsub("_", " ").gsub(/(?<=[a-z])(?=[A-Z])/, ' ')
    end

    # used to create a specific tag to keep models organized base on a consistent tag
    def class_tag(model_name)
      # upercase to lowercase
      model_name.downcase.pluralize
    end
  end
end
