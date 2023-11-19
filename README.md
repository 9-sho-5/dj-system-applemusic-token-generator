# dj-system-applemusic-token-generator

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

# DEVELOPER TOKEN
APPLE_API_DEV_TOKEN=''

# MEDIA USER TOKEN
MUSIC_USER_TOKEN=''

# KEY ID
APPLE_MUSIC_API_KEY_ID=''

# TEAM ID
APPLE_MUSIC_API_TEAM_ID=''
```

3. シークレットブラウザでlocalhost:4567/にアクセス

4. ポップアップブロックされないように許可する

5. ログインボタン押して、AppleID・Passwordでポップアップからログイン & APIの許可を行う

6. 検証開くとコンソールログからMusicUaerTokenを確認できる