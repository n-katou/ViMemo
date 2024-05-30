# サービス名：ViMemo
![](https://i.gyazo.com/e15b8372707ce91fb406c1f0ef75fbfe.png)

## **サービス概要**
このサービスは、動画視聴中に時間軸上で直感的にメモを追加できる機能を提供します。メモに登録されたタイムスタンプをクリックすると、その時間まで動画をスキップできます。また、いいねした動画でプレイリストを作成することができ、シャッフル再生も可能です。
画面設計は、モバイルファーストを第一優先に考えて作成しました。

## **サービスへの想い**
TV業界の照明マンは、CUEシート作成に苦労します。<br>
CUEシートは、次の音のタイミングで照明を調整するための進行表のようなものです。<br>
私も照明マンだった頃は苦労しました。<br>
YOUTUBEなどからアイデアを得る際、
動画に直感的にメモを書き込むことができれば、作業効率が飛躍的に向上すると考えました。<br>
そこで、現役の照明マンの助けになるべく、このサービスを作成することにしました。
<br>

## **機能紹介**
| トップ画面 | ログイン機能 |
|:-:|:-:|
|![トップ画面](gif/top.gif)|![ログイン機能](gif/login.gif)|
| MUSIC STATIONをイメージしてデザインしました。見たい説明だけ見れるように切り替えられるようにしました。 | 登録する手間を省くために、Google認証でログインできるようにしました。 |

| メモ作成 | メモ編集 |
|:-:|:-:|
|![メモ作成](gif/memocreate.gif)|![メモ編集](gif/memoedit.gif)|
| 再生中でもメモを書くことが出来ます。フォームが不必要な時は閉じれるようにしています。 | モーダルを中央に表示することで、動画を視聴しながら修正しやすくしました。 |

| タイムスタンプ | プレイリスト |
|:-:|:-:|
|![タイムスタンプ](gif/timestamp.gif)|![プレイリスト](gif/playlist.gif)|
| タイムスタンプをクリックでその時間までスキップします。モバイルだと時間が表示されないので、タイムを別途表示しています（表示・非表示の切り替え可能） | いいねした動画でプレイリストを作成出来ます。シャッフル機能もつけています。 |

## **技術スタック**

| カテゴリ | 技術 | 
| --- | --- |
| フロントエンド | Next.js 14.2.3 / React 18.3.1 / TypeScript 5.4.5 | 
| バックエンド | Ruby 3.1.5 / Ruby on Rails 7.0.3 |
| データベース | fly postgres |
| 認証 | Firebase Authentication / sorcery |
| API | Youtube data API |
| 環境構築 | Docker |
| CI/CD | Github Actions |
| インフラ | Vercel / Fly.io / Amazon S3 |
| その他 | Tailwind CSS / Swiper / ESLint <br>CarrierWave / letter opener web |

## **構成図**
![](https://i.gyazo.com/6b14d5d8f6f89b00029b7c288a2871c6.png)
<br>

## **ER図**
![](https://i.gyazo.com/4f8f57937967a69b765771943614da25.png)
<br>

## **画面遷移図**
https://www.figma.com/file/IFJvE4NJysCXdHW2bAumhK/Portfolio?type=design&node-id=0-1&mode=design&t=OX7llLQ0Tckasw5G-0
