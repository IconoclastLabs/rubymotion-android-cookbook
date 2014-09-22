class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    
    button = Android::Widget::Button.new(self)
    button.Text = "Touch Me To Toast"
    button.OnClickListener = self
    
    
    linearLayout = Android::Widget::LinearLayout.new(self)
    
    linearLayout.addView(button)
    linearLayout.Orientation = Android::Widget::LinearLayout::VERTICAL
    
    self.contentView = linearLayout
  end
  
  def onClick(button)
    toast = Android::Widget::Toast.makeText(self, "You've been toasted!", Android::Widget::Toast::LENGTH_SHORT)
    
    toast.show
    
  end
end
