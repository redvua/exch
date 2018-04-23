if [ $2 != "USD" -a $2 != "EUR" -a $2 != "RUR" ]
then
  echo "currency not found"
  exit 1
##elif [ !$2 ]
##then
fi

ex=$(cat privatbank.json | jq ".[]|select(.ccy==\"$2\").sale")
ex=${ex:1:-1}
echo "scale=2; ($1 * $ex) / 1" | bc

