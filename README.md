# memo

## tmp

* decodeAudioData で取得できる AudioBuffer は全データを取得できない？
  * なんか自分が持ってる mp3 の一部で全データを取得できないっぽかった、他はだいたい全データ取得できる

## 20150209mic

* [Web API Interfaces | MDN](https://developer.mozilla.org/en-US/docs/Web/API)
  * mozilla の html5 っぽいクラスの目次
* [Web Audio APIでAudioビジュアリゼーションをしてみよう@Homage to Rez - ハードコイルド・ワンダーランド](http://weathercook.hatenadiary.jp/entry/20111207/1323242737)
  * 早送り/フィルター
* [Capturing Audio & Video in HTML5 - HTML5 Rocks](http://www.html5rocks.com/en/tutorials/getusermedia/intro/)
  * getUserMedia に modernizr を使う例がある
* [Web Audio APIについて（１）「音楽を取得して出力する」 - ハードコイルド・ワンダーランド](http://weathercook.hatenadiary.jp/entry/20111121/1321892542)
* [thomasboyt/web-audio-recording-demo](https://github.com/thomasboyt/web-audio-recording-demo)
* [https://dvcs.w3.org/hg/audio/raw-file/tip/webaudio/webrtc-integration.html](https://dvcs.w3.org/hg/audio/raw-file/tip/webaudio/webrtc-integration.html)
* 録音せずリアルタイムに波形表示
  * http://www.g200kg.com/jp/docs/webaudio/analyser.html AnalyzerNode とかいうやつがあるっぽいけど解析用というよりはビジュアライザーアプリ用らしい
* buffer size 4096 で 440Hz の山谷が 40 個ぐらい描画される
* context.sampleRate
* getUserMedia でコールバックが呼ばれない
  * ローカルの HTML で動かしてるからだった、http://localhost から配信したらうまくいった

## 20150209sin

* [AudioContext.createJavaScriptNode - Web API Interfaces | MDN](https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createJavaScriptNode)
  * [AudioContext.createScriptProcessor() - Web API Interfaces | MDN](https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createScriptProcessor)
* [AudioContext.createScriptProcessor() - Web API Interfaces | MDN](https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createScriptProcessor)
  * サンプルがノイズを入れるやつ？
* イヤホンで聴くとノイズみたいのが入っている
* plotter の解像度が低い
  * css だけでなく canvas.width, canvas.height に window.innerWidth, window.innerHeight を設定したらうまくいった
    * http://hitode909.appspot.com/js/wav.js 

## TODO

* ループシーケンサーを作りたい
  * 何小節かの選択
  * 録音モード
  * 再生モード
* サンプラーの UI を作りたい
  * 録音(敷居値設定)、波形表示、波形編集(ここからここまでトリム)
* midi でピアノを弾くやつ
* mp3/wav 等をアップロードして波形表示
  * 波形だけでなく周波数特性とかも表示
* jpeg のアルゴリズムで波形つくるやつを音にしたい
* soundcloud みたいなマーカーで再生
* 矩形波
* sin 波のサンプルの一部をランダムに変更してみる
* エレキギターの音を録音してみたい
* amen break を使った何か
  * それぞれのパートに分けてビート検出して鳴らす
* analyzer 使ってみる
* 静的な wav を割り当てたのを鳴らす
  * web midi api 対応
  * それを波形で表示
