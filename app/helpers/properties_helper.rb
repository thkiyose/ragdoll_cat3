module PropertiesHelper
  def delimit(rent)
    # add commas then convert into string like 0000000 => "0,000,000"
    rent.to_s(:delimited)
  end

  def form_for_new_property?
    controller.action_name == "new" || controller.action_name == "create"
  end
end
