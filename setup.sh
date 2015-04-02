#!/bin/bash
clear
echo Dang khoi dong TekOS source, mo trong 5 giay...
sleep 1
echo Dang khoi dong TekOS source, mo trong 4 giay...
sleep 1
echo Dang khoi dong TekOS source, mo trong 3 giay...
sleep 1
echo Dang khoi dong TekOS source, mo trong 2 giay...
sleep 1
echo Dang khoi dong TekOS source, mo trong 1 giay...
sleep 1
sudo apt-get update
sudo apt-get install openjdk-7-jdk
y
sudo apt-get update && sudo apt-get install git-core gnupg flex bison gperf libsdl1.2-dev libesd0-dev libwxgtk2.8-dev squashfs-tools build-essential zip curl libncurses5-dev zlib1g-dev openjdk-6-jre openjdk-6-jdk pngcrush schedtool libxml2 libxml2-utils xsltproc lzop libc6-dev schedtool g++-multilib lib32z1-dev lib32ncurses5-dev lib32readline-gplv2-dev gcc-multilib
y
clear
echo Tat ca ung dung da duoc cap nhat!
sleep 4
clear
echo Cai dat TekOS Source trong 5...
sleep 1
echo Cai dat TekOS Source trong 4...
sleep 1
echo Cai dat TekOS Source trong 3...
sleep 1
echo Cai dat TekOS Source trong 2...
sleep 1
echo Cai dat TekOS Source trong 1...
sleep 1
mkdir ~/bin
PATH=~/bin:$PATH
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
clear
echo REPO da duoc download thanh cong!
sleep 3
clear
echo Ban muon cai dat source o dau, hay nhap duong dan giong nhu ben duoi:
echo " /home/$USER/rr or /media/$USER/yourdrive/rr"
read tekpath
clear
sleep 2
echo Khoi tao thu muc $tekpath trong 5...
sleep 1
echo Khoi tao thu muc $tekpath trong 4...
sleep 1
echo Khoi tao thu muc $tekpath trong 3...
sleep 1
echo Khoi tao thu muc $tekpath trong 2...
sleep 1
echo Khoi tao thu muc $tekpath trong 1...
sleep 1
mkdir -p $tekpath
cd $tekpath
repo init -u https://github.com/Tekos/android.git -b tekos5.1
clear
echo Da chuan bi de cai dat source TekOS roi!
sleep 4
clear
echo Dang chuan bi ket noi den may chu...
sleep 3
        echo Nhap so luong ket noi den may chu.
        echo Nhap 4 neu duong truyen cua ban duoi 15MBps
        echo Nhap 6 neu duong truyen cua ban tu 20-30 MBps
        echo Nhap 16 neu duong truyen cua ban tren 100 MBps
        read jobs
        echo Chuan bi Sync/Tai trong 5 giay nua...
        sleep 1
        echo Chuan bi Sync/Tai trong 4 giay nua...
        sleep 1
        echo Chuan bi Sync/Tai trong 3 giay nua...
        sleep 1
        echo Chuan bi Sync/Tai trong 2 giay nua...
        sleep 1
        echo Chuan bi Sync/Tai trong 1 giay nua...
        repo sync -j $jobs
        clear
                echo Giai nen source trong 5 giay nua...
                sleep 1
                echo Giai nen source trong 4 giay nua...
                sleep 1
                echo Giai nen source trong 3 giay nua...
                sleep 1
                echo Giai nen source trong 2 giay nua...
                sleep 1
                echo Giai nen source trong 1 giay nua...
                sleep 1
        clear
                echo Ban muon luu giu CCache vao khoang bao nhieu GB?
                echo Khuyen cao nen su dung tu 50-100GB
                echo CCache se giup cac ban build nhanh hon trong lan build tiep theo bang cach ghi lai cac file co the dung lai vao o cung.
                echo Neu ban khong muon su dung tinh nang nay, nhap 0.
                read ccsize
                echo Nhap duong dan chua Cache.
                echo Vi du: /home/$USER/.ccache
                read ccpath
                export USE_CCACHE=1
                export CCACHE_DIR=$ccpath/
                prebuilts/misc/linux-x86/ccache/ccache -M $ccsize
        sleep 3
        clear
                echo TekOS Source da duoc cai dat thanh cong tai
                echo $tekpath
sleep 3
echo  
                echo De co the build TekOS, cac ban can nhap dong lenh nay vao terminal:
                echo "./build_device.sh"
                echo in $tekpath
sleep 3
echo   
                echo Khoi dong Build helper trong vong 5 giay nua
                echo Nhan Control+C de thoat neu ban khong muon dung dich vu nay
                sleep 5
                cd $tekpath/build
                javac roomservice_generator.java
                mkdir -p $tekpath/.repo/local_manifests
                touch $tekpath/.repo/local_manifests/roomservice.xml
                java roomservice_generator
                echo roomservice.xml da duoc tao thanh cong ! Mo trong vong 5 giay nua
                clear
                sleep 5
                cat $tekpath/.repo/local_manifests/roomservice.xml
                sleep 10
                clear
                echo Chuan bi mo TekOS Build helper trong vong 5 giay nua
                echo De thoat, nhap Control+C
                sleep 5
                echo Mo TekOS Build Helper trong 5...
                sleep 1
                echo Mo TekOS Build Helper trong 4...
                sleep 1
                echo Mo TekOS Build Helper trong 3...
                sleep 1
                echo Mo TekOS Build Helper trong 2...
                sleep 1
                echo Starting the Build Wizard in 1...
                sleep 1
                clear
                cd $tekpath
                ./build.sh
                
#Here is where the Build Wizard stats. If the user exits, then it wont continue

