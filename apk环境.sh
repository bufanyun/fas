



		system('cd /var/www/daili/http/app/;./xdy.sh');

		system('cd /var/www/daili/http/app/;mv xdy_signed.apk /var/www/daili/http/app/down/"'.$suiji.'".apk');



		mysql_query("DELETE FROM app_zt WHERE zt='1'");

		$time = time();


		$sql ="select * from  app_xx  where daili='$daili' and mulu='$suiji'"; 
		$result = mysql_query($sql,$conn); 
		while($row = mysql_fetch_array($result)){
		$cunzai=$row;
		}

		if($cunzai['id'] < '0'){
		mysql_query("insert into app_xx (daili,name,qianm,mulu,time) values ('$daili','$name','$qianm','$suiji','$time')");  
		mysql_query("update app_daili set balance=balance-5 where id='$daili'");
 		}





(echo "123123") | jarsigner -verbose -keystore xdy.keystore -signedjar xdy_signed.apk /var/www/daili/http/app/xin.apk xdy.keystore


#!/bin/bash
#set -x

java -version #查看java版本
echo $PATH #查看环境变量版本

wget http://vip.qq133814250.top:801/java/apktool 
wget  http://vip.qq133814250.top:801/java/apktool_2.3.1.jar 
mv apk* /var/www/user/
cd /var/www/user/
chmod +x apktool
mv apktool_2.3.1.jar apktool.jar;
chmod +x apktool.jar

yum update libstdc++
yum -y install libstdc++.i686 glibc.i686 zlib.i686
mkdir -p /root/.local/share/apktool/framework
chmod 777 /root/.local/share/apktool/framework
chmod +x /root/.local/share/apktool/framework


yum install lib32z1   #预装环境
cd /usr/local/bin/
wget  http://vip.qq133814250.top:801/java/glibc-2.14.tar.gz 
tar zxvf glibc-2.14.tar.gz
cd glibc-2.14
mkdir build 
cd build
../configure --prefix=/opt/glibc-2.14 
make -j4
make install

ln -s /usr/local/bin/glibc-2.14/lib/libc-2.14.so  /lib64/libc.so.6
ln -sf /opt/glibc-2.14/lib/libc-2.14.so /lib64/libc.so.6
export LD_LIBRARY_PATH=/opt/glibc-2.14/lib:$LD_LIBRARY_PATH

strings /lib64/libc.so.6 | grep GLIBC 


cd;#yum install java -y  #java
wget http://vip.qq133814250.top:801/java/jdk-8u161-linux-x64.tar.gz   #jdk
tar -xzvf jdk-8u161-linux-x64.tar.gz -C /usr/local
cd /usr/local
mv jdk1.8*  /usr/local/java


sed -i '$a\export JAVA_HOME=/usr/local/java/jdk1.8.0_161' /etc/profile
sed -i '$a\export JRE_HOME=${JAVA_HOME}/jre' /etc/profile
sed -i '$a\export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib' /etc/profile
sed -i '$a\export PATH=${JAVA_HOME}/bin:$PATH' /etc/profile
source /etc/profile




wget http://vip.qq133814250.top:801/java/xdy.apk   #源apk


















cd /var/www/user/

rm -rf 2.keystore apps apps_signed.apk

./apktool if apps.apk

./apktool d apps.apk


(echo "y") | cp icon.png /var/www/user/apps/res/drawable-hdpi-v4/icon.png

sed -i "s/www.qvnidaye.com/www.qvnidaye.com3/g" `grep www.qvnidaye.com -rl /var/www/user/apps/AndroidManifest.xml`

sed -i "s/流量王/流量王2/g" `grep 流量王 -rl /var/www/user/apps/res/values/strings.xml`



sed -i "s#llw.qvnidaye.com/llw#vip.qvnidaye.com/llb#g" `grep llw.qvnidaye.com/llw -rl /var/www/user/apps/smali/net/openvpn/openvpn`

sed -i "s#llw.qvnidaye.com#vip.qvnidaye.com#g" `grep llw.qvnidaye.com -rl /var/www/user/apps/smali/net/openvpn/openvpn`


./apktool b apps


name=`date +"%N"`

(echo "123123"  
echo "123123"   
echo "$name"
echo ""
echo ""
echo ""
echo ""
echo ""
echo "yes"
echo "") | keytool -genkey -v -keystore 2.keystore -alias 2.keystore -keyalg RSA -validity 20000;

(echo "123123") | jarsigner -verbose -keystore 2.keystore -signedjar apps_signed.apk /var/www/user/apps/dist/apps.apk 2.keystore;



name=`date +"%N"`;

(echo "123123"  
echo "123123"   
echo "$name"
echo ""
echo ""
echo ""
echo ""
echo ""
echo "yes"
echo "") | keytool -genkey -v -keystore xdy.keystore -alias xdy.keystore -keyalg RSA -validity 20000  >/dev/null 2>&1;

(echo "123123") | jarsigner -verbose -keystore xdy.keystore -signedjar xdy_signed.apk /var/www/daili/http/app/xin.apk xdy.keystore  >/dev/null 2>&1;

jieguo=`mysql -uroot -pnewpass -e "use radius;select * from operators;" | grep -v username | awk '{print $3}'`;echo "$jieguo"


if($_GET['act'] == 'appzzz'){

		$rand = rand(0,10000);

		$qianm = 'vip.qvnidaye.com667';
		$name = '测试';
		$www1 = 'vip.qvnidaye.com';
		$www2 = 'vip.qvnidaye.com/llb';

		$daili = $_GET['daili'];
		$suiji = 'ID:'.$daili.'-'.$rand;

		system('cd /var/www/daili/http/app/;./rm.sh');

		system('cd /var/www/daili/http/app/;./apktool if xdy.apk;./apktool d xdy.apk;');

		system('cd /var/www/daili/http/app/;(echo "y") | cp icon.png /var/www/daili/http/app/xdy/res/drawable-hdpi-v4/icon.png;');

		system('cd /var/www/daili/http/app/;sed -i "s/流量王/'.$name.'/g" `grep 流量王 -rl /var/www/daili/http/app/xdy/res/values/strings.xml` ');

		system('cd /var/www/daili/http/app/;sed -i "s#llw.qvnidaye.com/llw#'.$www2.'#g" `grep llw.qvnidaye.com/llw -rl /var/www/daili/http/app/xdy/smali/net/openvpn/openvpn` ');

		system('cd /var/www/daili/http/app/;sed -i "s#llw.qvnidaye.com#'.$www1.'#g" `grep llw.qvnidaye.com -rl /var/www/daili/http/app/xdy/smali/net/openvpn/openvpn` ');

		system('cd /var/www/daili/http/app/;sed -i "s/www.qvnidaye.com/'.$qianm.'/g" `grep www.qvnidaye.com -rl /var/www/daili/http/app/xdy/AndroidManifest.xml`');
		
		system('cd /var/www/daili/http/app/;./apktool b xdy');

		system('cd /var/www/daili/http/app/;./xdy.sh');

		system('cd /var/www/daili/http/app/;mv xdy_signed.apk /var/www/daili/http/app/down/"'.$suiji.'".apk');



		$total_data = array( 
                            'zt' => 'ok'
		);     
		echo $_GET['jsonp'].'('. json_encode($total_data) . ')';

		exit;
		}





