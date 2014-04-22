module GamesHelper

  def top_rates
    Game.joins(:game_rate).order("game_rates.total desc").limit(5)
  end

  def most_downloads
    Game.joins(:game_info).order("game_infos.downloads_num desc").limit(5)
  end

  def new_ones
    Game.order(:created_at => :desc).limit(5)
  end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
