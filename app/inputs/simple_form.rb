module SharpZones
  module SimpleForm
    class CityInput < ::SimpleForm::Inputs::Base
      def input
        out = '' # the output string we're going to build
        # check if there's an uploaded file (eg: edit mode or form not saved)
        if object.send("#{attribute_name}?")
          # append preview image to output
          #select_tag(:city_id, '<option value="1">Lisbon</option>...')
          out << template.select_tag(object.send(attribute_name), options_for_select(SharpZones::City.all.map { |c| [c.name, c.code] }))
        end
        # append file input. it will work accordingly with your simple_form wrappers
        #(out << @builder.file_field(attribute_name, input_html_options)).html_safe
  end
      end
    end
  end
end

::SimpleForm::FormBuilder.map_type :city_input, :to => RailsKindeditor::SimpleForm::CityInput