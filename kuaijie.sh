#!/bin/bash

blue(){
    echo -e "\033[34m\033[01m$1\033[0m"
}
green(){
    echo -e "\033[32m\033[01m$1\033[0m"
}
yellow(){
    echo -e "\033[33m\033[01m$1\033[0m"
}
red(){
    echo -e "\033[31m\033[01m$1\033[0m"
}

if [[ -f /etc/redhat-release ]]; then
    release="centos"
    systemPackage="yum"
    systempwd="/usr/lib/systemd/system/"
elif cat /etc/issue | grep -Eqi "debian"; then
    release="debian"
    systemPackage="apt-get"
    systempwd="/lib/systemd/system/"
elif cat /etc/issue | grep -Eqi "ubuntu"; then
    release="ubuntu"
    systemPackage="apt-get"
    systempwd="/lib/systemd/system/"
elif cat /etc/issue | grep -Eqi "centos|red hat|redhat"; then
    release="centos"
    systemPackage="yum"
    systempwd="/usr/lib/systemd/system/"
elif cat /proc/version | grep -Eqi "debian"; then
    release="debian"
    systemPackage="apt-get"
    systempwd="/lib/systemd/system/"
elif cat /proc/version | grep -Eqi "ubuntu"; then
    release="ubuntu"
    systemPackage="apt-get"
    systempwd="/lib/systemd/system/"
elif cat /proc/version | grep -Eqi "centos|red hat|redhat"; then
    release="centos"
    systemPackage="yum"
    systempwd="/usr/lib/systemd/system/"
fi

$systemPackage -y install wget curl

vps_superspeed(){
	wget -qO- --no-check-certificate https://raw.githubusercontent.com/oooldking/script/master/superbench.sh | bash
}

vps_zbench(){
	wget -N --no-check-certificate https://raw.githubusercontent.com/FunctionClub/ZBench/master/ZBench-CN.sh && bash ZBench-CN.sh
}

vps_testrace(){
	wget -O huichong.sh https://raw.githubusercontent.com/wxfyes/bt/master/huichong.sh && bash huichong.sh
}

vps_LemonBenchIntl(){
    curl -fsL https://ilemonra.in/LemonBenchIntl | bash -s fast
}

vps_Cn2GIA(){
    wget -N --no-check-certificate https://raw.githubusercontent.com/wangn9900/testvps/master/return.sh && bash return.sh
}

vps_make-a(){
    wget -P /root -N --no-check-certificate "https://raw.githubusercontent.com/mack-a/v2ray-agent/master/install.sh" && chmod 700 /root/install.sh && /root/install.sh
}

vps_wulabing1(){
    wget -N --no-check-certificate -q -O install.sh "https://raw.githubusercontent.com/wulabing/V2Ray_ws-tls_bash_onekey/master/install.sh" && chmod +x install.sh && bash install.sh
}

vps_wulabing2(){
    wget -N --no-check-certificate -q -O install.sh "https://raw.githubusercontent.com/wulabing/V2Ray_ws-tls_bash_onekey/dev/install.sh" && chmod +x install.sh && bash install.sh
}

vps_bt1(){
   yum install -y wget && wget -O install.sh http://download.bt.cn/install/install_6.0.sh && sh install.sh
}

vps_bt2(){
   wget -O install.sh http://download.bt.cn/install/install-ubuntu_6.0.sh && bash install.sh
}

vps_bt3(){
   wget -O install.sh http://download.bt.cn/install/install-ubuntu_6.0.sh && sudo bash install.sh
}

vps_bt4(){
   curl http://v7.hostcli.com/install/update6.sh|bash
}
vps_bbr1(){
   wget -N --no-check-certificate "https://raw.githubusercontent.com/chiakge/Linux-NetSpeed/master/tcp.sh" && chmod +x tcp.sh && ./tcp.sh
}

vps_bbr2(){
  wget -N --no-check-certificate "https://raw.githubusercontent.com/ylx2016/Linux-NetSpeed/master/tcp.sh" && chmod +x tcp.sh && ./tcp.sh
}
vps_nf(){
  wget -O nf https://github.com/sjlleo/netflix-verify/releases/download/2.6/nf_2.6_linux_amd64 && chmod +x nf && clear && ./nf
}
vps_v2-ui(){
  bash <(curl -Ls https://raw.githubusercontent.com/wxfyes/nf/main/v2-ui.sh)
}
vps_root(){
  bash <(curl -sSL https://raw.githubusercontent.com/wxfyes/Oracle/main/root.sh)
}
vps_trojan(){
  wget https://raw.githubusercontent.com/wxfyes/trojan/master/Trojan.sh && bash Trojan.sh
}
vps_frps(){
  wget https://raw.githubusercontent.com/MvsCode/frps-onekey/master/install-frps.sh -O ./install-frps.sh && chmod 700 ./install-frps.sh && ./install-frps.sh install
}
vps_nps(){
  yum -y install wget && wget https://github.com/ehang-io/nps/releases/download/v0.26.10/linux_amd64_server.tar.gz && tar -zxvf linux_amd64_server.tar.gz && sudo ./nps install && ./nps start
}
vps_warp(){
  bash <(curl -fsSL git.io/warp.sh) menu
}
vps_gost(){
  wget --no-check-certificate -O gost.sh https://raw.githubusercontent.com/KANIKIG/Multi-EasyGost/master/gost.sh && chmod +x gost.sh && ./gost.sh
}
vps_ehco(){
  bash <(curl -fsSL https://git.io/ehco.sh)
}
vps_ip(){
  curl ip.p3terx.com
}
start_menu(){
    clear
	green "=========================================================="
         blue " 本脚本支持：CentOS7+ / Debian9+ / Ubuntu16.04+"
	 blue " 网站：https://maskviral.com"
	 blue " YouTube频道：maskviralTV"
	 blue " TG频道：https://t.me/maskviral"
         blue " 此脚本源于网络，仅仅只是汇聚脚本功能，方便大家使用而已！"
	green "=========================================================="
      red " 脚本测速会大量消耗 VPS 流量，请悉知！"
    green "==========VPS测速========================================="
     yellow " 1. VPS 三网纯测速    （各取部分节点 - 中文显示）"
     yellow " 2. VPS 综合性能测试  （包含测速 - 英文显示）"
	 yellow " 3. VPS 回程路由     （四网测试 - 英文显示）"
	 yellow " 4. VPS 快速全方位测速（包含性能、回程、速度 - 英文显示）"
	 yellow " 5. VPS 回程线路测试 （假CN2线路，脚本无法测试）"
	green "==========科学上网一键脚本==============================="
	 yellow " 6. xray8合1一键安装脚本 "
	 yellow " 7. wulabing-v2ray一键安装脚本 "
	 yellow " 8. wulabing-xray一键安装脚本 "
	 yellow " 9. v2-ui面板一键安装 "
	 yellow " 10. Trojan一键安装（atrandys版）"
	green "===================宝塔面板官方脚本======================="
	 yellow " 11. centos系统一键安装 "
	 yellow " 12. debian系统一键安装 "
	 yellow " 13. ubuntu系统一键安装 "
	green "========宝塔面板破解，需先安装官方版再运行此脚本============"
	 yellow " 14. 宝塔破解企业版 一键破解 "
	green "===================BBR加速==============================="
	 yellow " 15. BBR一键加速（稳定版）"
	 yellow " 16. BBR一键加速（最新版）"
	green "====================解锁Netflix检测======================="
	 yellow " 17. 启动Netflix检测脚本 "
	green "===== ====其他工具（KVM架构VPS通用）=========="
	 yellow " 18. 甲骨文一键设置root密码 "
	 yellow " 19. frp内网穿透一键安装 "
	 yellow " 20. NPS内网穿透一键安装 "
	 yellow " 21. Cloudflare WARP 一键配置脚本 "
	 yellow " 22. gost隧道一键中转 "
	 yellow " 23. Ehco隧道一键中转 "
	 yellow " 24. 查看本机IP "
        red " 0. 退出脚本 "
    echo
    read -p "请输入数字:" num
    case "$num" in
    	1)
		vps_superspeed
		;;
		2)
		vps_zbench
		;;
		3)
		vps_testrace
		;;
		4)
		vps_LemonBenchIntl
		;;
		5)
		vps_Cn2GIA
		;;
		6)
		vps_make-a
		;;
		7)
		vps_wulabing1
		;;
		8)
		vps_wulabing2
		;;
		9)
		vps_v2-ui
		;;
		10)
		vps_trojan
		;;
		11)
		vps_bt1
		;;
		12)
		vps_bt2
		;;
		13)
		vps_bt3
		;;
		14)
		vps_bt4
		;;
		15)
		vps_bbr1
		;;
		16)
		vps_bbr2
		;;
		17)
		vps_nf
		;;
		18)
		vps_root
		;;
		19)
	        vps_frps
		;;
		20)
		vps_nps
		;;
		21)
		vps_warp
		;;
		22)
		vps_gost
		;;
		23)
		vps_ehco
		;;
		24)
		vps_ip
		;;
		0)
		exit 0
		;;
		*)
	clear
	echo "请输入正确数字"
	sleep 2s
	start_menu
	;;
    esac
}

start_menu
