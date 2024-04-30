## コンセプト
<img width="1036" alt="スクリーンショット 2024-04-29 12 45 39" src="https://github.com/fs0414/speakerEnv/assets/76100848/973e96ab-f0b6-42ba-a2a1-4a559ba5a51f">
https://www.figma.com/file/Bm7wTqkY4bRsHYsDHGknrm/Untitled?type=whiteboard&node-id=0%3A1&t=pGrzNETbzCpMParo-1

#### memo
- 下記のスライド資料が投稿される
    - なんらかの理由で公開に至らなかったスライド
    - 公開できる品質に至らなかったスライド
    - 完成スライドのボツ版
- speakerDeckに投稿できないスライドのリサイクル
- publicかprivateかは選べる
- 資料としてその時に価値を出せなくても、あなたのアイデアやデザインには価値がありますよって
- 投稿されるスライド自体をユーザーの利用価値とせず、そこから生まれるコミュニケーションを動機に使ってくれる状態が良い
- 仮説に対する不確定要素
  - どこにも使われなかったスライドってどのくらいあるのかが明確ではない 

## 環境構築
1. clone
```zsh
git clone https://github.com/fs0414/speakerEnv.git
```

2. env設定
    
3. container起動
```zsh
docker compose up -d --build

docker compose exec app sh
```

4. db set
```zsh
rails db:create

rails db:migrate
```

## 開発フロー
### git flow
- main, develop, feature
- PRのreviewerは@fs0414に付ける

### issue
- 基本的に全てissueを立ててから開発に入る
  - label
    - design doc
      - 仕様に関する議論
    - enhancement
      - 新機能


| actor | stack |
| ---- | ---- |
| app | rails |
| slide host | s3 |
| db | postgresql |
| batch | sidekiq |
| cache | redis |
| production | render or fly.io |
| local | docker |
