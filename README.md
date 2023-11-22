# dj-system-applemusic-token-generator

### 必要項目
- AppleID・Password
- Private Key
- Team ID
- Key ID

[Private Key・Team ID・Key ID取得に関する参考記事](https://dev.classmethod.jp/articles/ios-11-apple-music-api-intro/)

### MusicUserToken取得手順
1. ライブラリのインストール
```
bundle install
```

2. `.env`の準備
```
# PRIVATE KEY
APPLE_MUSIC_API_PRIVATE_KEY='-----BEGIN PRIVATE KEY-----
...
-----END PRIVATE KEY-----'

# KEY ID
APPLE_MUSIC_API_KEY_ID=''

# TEAM ID
APPLE_MUSIC_API_TEAM_ID=''
```

3. `rackup config.ru`コマンドでサーバー起動

4. シークレットブラウザで`localhost:4567/`にアクセス

5. ポップアップブロックされないように許可する

6. ログインボタン押して、AppleID・Passwordでポップアップからログイン & APIの許可を行う

7. `トークンを表示する`ボタンで`アクセストークン`と`Music User Token`を確認可能

8. その他のリクエストが問題なく通るか確認する
   
   ※ 指定のプレイリストIDを使用する場合は、p.〇〇〇〇〇〇〇〇〇〇〇〇〇〇〇を変更してお使いください
   
   ※ Get Playlistsから自身のプレイリストを3つ取得可能ですので、そちらからプレイリストIDをご確認ください
