class APIRouter < Base
  @@applemusic_api = nil

  get '/tokens' do
    @access_token = MusicApi::AppleMusicApi.get_access_token()
    @music_user_token = MusicApi::AppleMusicApi.get_music_user_token()
    erb :home
  end

  # アクセストークンの生成・設定
  get '/apple_music' do
    if @@applemusic_api == nil
      @access_token = MusicApi::AppleMusicApi.generate_access_token()
    else
      @access_token = MusicApi::AppleMusicApi.get_access_token()
    end
    erb :home
  end

  # Music User Tokenの設定
  post '/set_music_user_token' do
    if @@applemusic_api == nil
      @@applemusic_api = MusicApi::AppleMusicApi.new(params[:musicUserToken])
    end

    data = {
      message: "=== Message from Server ===\nMusic-User-Token has set successfull!"
    }
    send_json(data)
  end

  # キーワードによる検索
  get '/search' do
    keyword = params[:keyword].encode(Encoding::UTF_8)
    @result_searched_data = @@applemusic_api.search(keyword)
    erb :home
  end

  # 指定したtrack_idから楽曲を取得(マリーゴールド)
  get "/get_track" do
    @result_track = @@applemusic_api.get_track(1402042897)
    erb :home
  end

  # 自分のプレイリストを全取得(テストでは3件に制限)
  get '/get_playlists' do
    @result_playlists = @@applemusic_api.get_playlists(3)
    erb :home
  end

  # 指定したplaylist_idから自分のプレイリストを取得
  get '/get_playlist' do
    @result_playlist = @@applemusic_api.get_playlist("p.◯◯◯◯◯◯◯◯◯◯◯◯◯◯◯")
    erb :home
  end

  # プレイリストの作成
  get '/create_playlist' do
    name = "DJ Test Playlist"
    description = " - Generated by DJ Gassi"
    res = @@applemusic_api.create_playlist(name, description)
    erb :home
  end

  # 指定したプレイリストに指定したtrackを追加する
  get '/add_track_to_playlist' do
    track_id = "1402042897"
    playlist_id = "p.◯◯◯◯◯◯◯◯◯◯◯◯◯◯◯" 
    res = @@applemusic_api.add_track_to_playlist(playlist_id, track_id)
    erb :home
  end
end