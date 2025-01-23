PHP=$ (dphg-query -W -f='${Status} php7.0 2>/dev/null | grep -c 'ok installed')

if [ $PHP -eq 0 ]; then
    echo "PHP ja lisad paigaldatud"
    apt install php7.0 libapache2-mod-php7.0 php7.0-mysql
    echo "php installed"
elif [ $PHP -eq 1 ]; then
    echo "php perma installed"
    which php
fi
