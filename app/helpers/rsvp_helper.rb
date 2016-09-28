module RsvpHelper
  def add_guest_link(name)
    link_to_function name do |page|
      page.insert_html :bottom, :guests, partial: 'guest', object: Guest.new
    end
  end
end
