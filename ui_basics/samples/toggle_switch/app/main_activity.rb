class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    
    
    toggle_switch = Android::Widget::Switch.new(self)
    toggle_switch.setTextOn("On Text")
    toggle_switch.setTextOff("Off Text")
    
    linearLayout = Android::Widget::LinearLayout.new(self)
    linearLayout.addView(toggle_switch)
    linearLayout.setPadding(40,20,0,10)
    self.contentView = linearLayout
    
  end
end
