class PagesController < ApplicationController
  def home

  end

  def contact
    @contacts = %w[Bob Sheila Hank Eric]
    if params[:contact_name].present?
      @contacts = @contacts.select do |name|
        name.downcase == params[:contact_name].downcase
      end
    end
  end

  def about
    @today_date = Date.today.strftime('%d %b')
  end

  def letters
    random_letters=rand.string[]
  end

end
