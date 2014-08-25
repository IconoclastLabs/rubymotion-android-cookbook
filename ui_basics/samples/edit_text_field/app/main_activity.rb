class ButtonListener < Java::Lang::Object
  attr_accessor :activity

  def onClick(view)
    activity.set_label
  end
end

class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super

    @layout = Android::Widget::LinearLayout.new(self)
    @layout.orientation = Android::Widget::LinearLayout::VERTICAL

    @field = Android::Widget::EditText.new(self)
    @field.hint = "Your name"
    @layout.addView(@field)

    @button = Android::Widget::Button.new(self)
    @button.text = "Done"
    listener = ButtonListener.new
    listener.activity = self
    @button.onClickListener = listener
    @layout.addView(@button)

    @label = Android::Widget::TextView.new(self)
    @label.gravity = Android::View::Gravity::CENTER_HORIZONTAL
    @label.textSize = 80.0
    @label.text = "..."
    @layout.addView(@label)

    self.contentView = @layout
  end

  def set_label
    name = @field.getText.toString
    @label.text = "Hello, #{name}!"
    @field.text = ""
  end
end
