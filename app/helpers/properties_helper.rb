module PropertiesHelper
  def delimit(rent)
    # add commas then convert into string like 0000000 => "0,000,000"
    rent.to_s(:delimited)
  end

  def form_for_new_property?
    controller.action_name == "new" || controller.action_name == "create" || controller.action_name == "confirm"
  end

  def confirm_or_not
    if controller.action_name == "new" || controller.action_name == "create"
      confirm_properties_path
    end
  end
end
