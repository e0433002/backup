* SharedPreferences
輕量級的除存類，特别適用於保存配置参数
MODE_PRIVATE=0,表示只有此程式可以存取
getSharedPreferences('hipad_preference', 0);
儲存於 /data/data/com.android.gallery3d/shared_prefs/hipad_preference.xml

SharedPreferences.edit(),可以獲得編輯器
editor.putBoolean(),設定booleam到編輯器內
editor.commit(),完成提交

應該是在這裡取出pref,進行畫面刷新,但是不知道何時會主動呼叫這個method
LocalAlbumSet.reload(){
  SharedPreferences pref = mApplication.getAndroidContext().getSharedPreferences("hipad_preference", 0);
  Editor editor = pref.edit();
  boolean isNeedRefresh = pref.getBoolean("needrefresh",false);
  ...
}
--------------------------------------------------------------------------------------------------
