#!/sbin/sh

#remove captive portal warning
if [ -z "`grep "captive_portal_https_url" /data/system/users/0/settings_global.xml`" ]
then
  if [ "`grep "</settings>" /data/system/users/0/settings_global.xml`" ]
  then
    sed -i '$d' /data/system/users/0/settings_global.xml
  fi
  echo '  <setting id="88" name="captive_portal_https_url" value="https://google.cn/generate_204" package="root" />' >> /data/system/users/0/settings_global.xml
else
  if [ -z "`grep "<setting id="88" name="captive_portal_https_url" value="https://google.cn/generate_204" package="root" />" /data/system/users/0/settings_global.xml`" ]
  then
    sed -i 's/name="captive_portal_https_url" value=".*"/name="captive_portal_https_url" value="https:\/\/google.cn\/generate_204" package="root"/g' /data/system/users/0/settings_global.xml
  fi
fi

if [ -z "`grep "captive_portal_http_url" /data/system/users/0/settings_global.xml`" ]
then
  if [ "`grep "</settings>" /data/system/users/0/settings_global.xml`" ]
  then
    sed -i '$d' /data/system/users/0/settings_global.xml
  fi
  echo '  <setting id="89" name="captive_portal_http_url" value="http://google.cn/generate_204" package="root" />' >> /data/system/users/0/settings_global.xml
else
  if [ -z "`grep "<setting id="89" name="captive_portal_http_url" value="http://google.cn/generate_204" package="root" />" /data/system/users/0/settings_global.xml`" ]
  then
    sed -i 's/name="captive_portal_http_url" value=".*"/name="captive_portal_http_url" value="http:\/\/google.cn\/generate_204" package="root"/g' /data/system/users/0/settings_global.xml
  fi
fi

if [ -z "`grep "</settings>" /data/system/users/0/settings_global.xml`" ]
then
  echo '</settings>' >> /data/system/users/0/settings_global.xml
fi
