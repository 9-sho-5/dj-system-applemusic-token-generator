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

# MEDIA USER TOKEN
MUSIC_USER_TOKEN=''

# KEY ID
APPLE_MUSIC_API_KEY_ID=''

# TEAM ID
APPLE_MUSIC_API_TEAM_ID=''
```

3. シークレットブラウザで`localhost:4567/`にアクセス

4. ポップアップブロックされないように許可する

5. ログインボタン押して、AppleID・Passwordでポップアップからログイン & APIの許可を行う

6. 検証開くとコンソールログからMusicUserTokenを確認できる