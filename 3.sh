# tworcy zadania to kurwa kiepy i zapomnieli ze dostep do plikow w / jest tylko dla admina 
# wiec zeby skrypt dzialal to trzeba dopisac przy uruchianiu sudo:
# sudo ./3.sh albo jak nie zadziala to sudo bash 3.sh
cat /var/log/kern.log | grep USB | tail -n 3
