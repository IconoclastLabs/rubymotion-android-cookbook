class DialogFactory
  
  def self.getDialog(id, activity)
    case id
    when 0
      Android::App::AlertDialog.new(activity, Android::App::AlertDialog::THEME_HOLO_LIGHT)
    when 1
      Android::App::DatePickerDialog.new(activity, nil, 2014, 12, 31)
    when 2
      Android::App::TimePickerDialog.new(activity, nil, 12, 0, false)
    when 3
      Android::Text::Method::CharacterPickerDialog.new(activity, Android::View::View.new(activity),nil, "0123456789ABCDEFGHIJKLMNOP", false )
    when 4
      Android::Support::V7::App::MediaRouteChooserDialog.new(activity)
    when 5
    when 6
    when 7
      progressDialog = Android::App::ProgressDialog.new(activity);
      progressDialog.setCancelable(true);
      progressDialog.setProgressStyle(Android::App::ProgressDialog::STYLE_HORIZONTAL);
      progressDialog.setProgress(50);
      progressDialog.setMax(100);
      progressDialog
    end
  end
  
end