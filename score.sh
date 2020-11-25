#!/bin/bash



SCORE=0


randData=$(strings CucumberSetup/web/logs | grep -o 'randData/[a-z/@.0-9\-]*' | cut -d '/' -f 2-)

registerData=$(strings CucumberSetup/web/logs | grep -o 'regData/[a-z/@.0-9\-]*' | cut -d '/' -f 2-)

logincaptchaData=$(strings CucumberSetup/web/logs | grep -o 'loginData/[a-z/@.0-9\-]*' | cut -d '/' -f 4 | cut -d '.' -f 1)
logincaptchaImageData=$(strings CucumberSetup/web/logs | grep -o 'loginData/[a-z/@.0-9\-]*' | cut -d '/' -f 5 | cut -d '.' -f 1)
dragPing=$(strings CucumberSetup/web/logs | grep -o 'Drag/[a-z/@.0-9\-]*')
echo $dragPing

if [[ $dragPing == "Drag/" ]]; then
 SCORE=$(($SCORE+20))
fi
case $logincaptchaData in
    nrtgdkwn)
    [[ $logincaptchaImageData=="0" ]] && SCORE=$(($SCORE+40)) ||
    break
    ;;
    dpbaiajz)
        [[ $logincaptchaImageData=="1" ]] && SCORE=$(($SCORE+40)) ||
        break
        ;;
  czchjiav)
        [[ $logincaptchaImageData=="2" ]] && SCORE=$(($SCORE+40)) ||
        break
        ;;
  phxxjdrk)
        [[ $logincaptchaImageData=="3" ]] && SCORE=$(($SCORE+40)) ||
        break
        ;;
  yhykemwr)
    [[ $logincaptchaImageData=="4" ]] && SCORE=$(($SCORE+40)) ||
        break
        ;;
  zagxtwdx)
        [[ $logincaptchaImageData=="5" ]] && SCORE=$(($SCORE+40)) ||
        break
        ;;
  wvvjcfua)
        [[ $logincaptchaImageData=="6" ]] && SCORE=$(($SCORE+40)) ||
        break
        ;;
  plbhxzxl)
        [[ $logincaptchaImageData=="7" ]] && SCORE=$(($SCORE+40)) ||
        break
        ;;
  nvhoxdm)
        [[ $logincaptchaImageData=="8" ]] && SCORE=$(($SCORE+40)) ||
        break
        ;;
  lucytpft)
    [[ $logincaptchaImageData=="9" ]] && SCORE=$(($SCORE+40)) ||
    break
    ;;
  udbbgxls)
    [[ $logincaptchaImageData=="10" ]] && SCORE=$(($SCORE+40)) ||
    break
    ;;
    *)
    echo "Captche not matched"
    ;;
esac

echo $randData
echo $registerData
echo $logincaptchaData
echo $logincaptchaImageData

if [[ $randData == $registerData && $randData!="" && $registerData!="" ]]; then

SCORE=$(($SCORE+40))

fi



echo "FS_SCORE:"$SCORE"%"