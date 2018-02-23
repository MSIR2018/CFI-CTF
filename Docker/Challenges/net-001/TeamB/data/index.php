<html>
Current configuration : 1370 bytes<br />
!<br />
version 12.2<br />
no service timestamps log datetime msec<br />
no service timestamps debug datetime msec<br />
service password-encryption<br />
!<br />
hostname Switch<br />
!<br />
enable secret 5 $1$mERr$.hJmm6dwMroMnqPpa21g5.<br />
!<br />
!<br />
!<br />
!<br />
username admin privilege 15 password 7 0801484300173A41010003<br />
username alfonse privilege 1 password 7 08014048061716122D5D1F0F25<br />
username hub privilege 1 password 7 0829594C364F161C1D<br />
!<br />
!<br />
spanning-tree mode pvst<br />
spanning-tree extend system-id<br />
!<br />
interface FastEthernet0/1<br />
!<br />
interface FastEthernet0/2<br />
!<br />
interface FastEthernet0/3<br />
!<br />
interface FastEthernet0/4<br />
!<br />
interface FastEthernet0/5<br />
!<br />
interface Vlan1<br />
 no ip address<br />
 shutdown<br />
!<br />
!<br />
!<br />
!<br />
line con 0<br />
!<br />
line vty 0 4<br />
 login<br />
line vty 5 15<br />
 login<br />
!<br />
!<br />
!<br />
end<br />
</html>