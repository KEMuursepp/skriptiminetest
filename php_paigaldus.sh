PHP=$(dpkg-query -W -f='${Status}' php8.1 2>/dev/null | grep -c "ok installed" )

if [ $PHP -eq 0 ]; then
    echo "PHP ja lisad paigaldatud"
    apt install php8.1 libapache2-mod-php8.1 php8.1-mysql
    echo "php installed"
elif [ $PHP -eq 1 ]; then
    echo "php perma installed"
    which php
fi

