rk3188 chipset
======

ifive3 cwm recovery

Complie step

1. . build/envsetup.sh
2. lunch cm_rk3188-eng
3. make -j4 recoveryimage

or
. build/envsetup.sh && lunch cm_rk3188-eng && make -j4 recoveryimage


If you make change to BoardConfig.mk, then you need to run

$ lunch clobber

to update the change, or your change won't get picked

git update change

1. cd working folder
2. git commit -a -m "all what had been change"
3. git push
	
git pull source to local
	git pull