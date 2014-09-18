class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    
    items = ["I picked thing 1", "I picked thing 2", "I picked thing 3", "I picked thing 4"]
    adapter = Android::Widget::ArrayAdapter.new(self, Android::R::Layout::Simple_list_item_1,  items)


    dropDownSpinner = Android::Widget::Spinner.new(self, Android::Widget::Spinner::MODE_DROPDOWN)
    dropDownSpinner.setAdapter(adapter)
    
    dialogSpinner = Android::Widget::Spinner.new(self, Android::Widget::Spinner::MODE_DIALOG)
    dialogSpinner.setAdapter(adapter)
    
    
    linearLayout = Android::Widget::LinearLayout.new(self)
    linearLayout.addView(dropDownSpinner)
    linearLayout.addView(dialogSpinner)
    linearLayout.setPadding(40,40,0,40)
    self.contentView = linearLayout
  end
end
