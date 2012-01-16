" http://blog.layer8.sh/ja/2011/12/09/perl%E3%81%AE%E7%9C%81%E7%95%A5%E8%A8%98%E6%B3%95%E3%81%A7%E4%BD%BF%E3%81%88%E3%82%8B%E7%89%B9%E6%AE%8A%E5%A4%89%E6%95%B0%E4%B8%80%E8%A6%A7/
" TODO エンターでサンプルコード見れるようにする
"      説明文わかりやすくする
let s:unite_source = {
\   'name': 'perl_special_vars',
\ }
function! s:unite_source.gather_candidates(args, context)
  return [
  \   { 'word': '$. 【ファイルから読み込み時の現在の行数】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$/ 【入力時のレコード区切り文字。通常は改行。】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$, 【出力時の項目区切り文字。print @xx; の時に有効】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$" 【出力時の項目区切り文字。print “@xx”; の時に有効】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$\ 【出力時の行末文字。print “$xx”; の後ろに付加される】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$# 【出力時の数値形式。通常は”%.20g”。詳細はprintfを参照】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$% 【出力時の現在のページ番号】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$= 【出力時の現在の行数】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$- 【出力時の残り行数】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$~ 【出力時のフォーマット名(デフォルトはハンドル名と同じ)】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$^ 【出力時のヘッダフォーマット名】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$| 【0以外が代入されると出力をバッファリングしなくなる。】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$$ 【プロセスID】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$? 【最後に実行されたコマンドのステータス】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$& 【パターンマッチにマッチした部分文字列】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$` 【パターンマッチにマッチした部分の前側の文字列】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': "$' 【パターンマッチにマッチした部分の後側の文字列】", 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$+ 【パターンマッチの最後の()に対応する文字列】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$0 【perlスクリプトのコマンド名】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$1 【パターンマッチの際の1番目の()に対応する文字列】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$[ 【配列の最初の添え字。通常は0。】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$] 【perlのバージョン情報】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$; 【高次元連想配列の添え字の区切り文字】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$! 【エラー番号、もしくはエラー文字列】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$@ 【直前のevalコマンドのエラーメッセージ】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$< 【このプロセスの実ユーザーID】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$> 【このプロセスの実行ユーザーID】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$( 【このプロセスの実グループID】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$) 【このプロセスの実効グループID】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$^D 【デバッグフラグの値】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$^F 【システムファイルディスクリプタの最大値】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$^I 【-iオプションで指定した拡張子の名前】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$^P 【デバッガが使用する内部フラグ】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$^T 【スクリプトを実行した時刻】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$^W 【警告スイッチの現在値】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '$^X 【perl自身の起動時の名前】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '@_ 【サブルーチンへの引数】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '@INC 【perlライブラリ検索ディレクトリ】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '%INC 【読み込まれたライブラリファイルの配列】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '__LINE__ 【スクリプト中の現在の行数】', 'source': 'perl_special_vars', 'kind': 'word' },
  \   { 'word': '__FILE__ 【スクリプトのファイル名】', 'source': 'perl_special_vars', 'kind': 'word' },
  \ ]
endfunction
call unite#define_source(s:unite_source)
unlet s:unite_source

