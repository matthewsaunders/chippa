module ApplicationHelper
  def label_color(color)
    (color.sub('#','0x').to_i(base=16)) > (0xffffff/2) ? '#333' : '#fff';
  end
end
