ex=$(cat privatbank.json | jq '.[]|select(.ccy=="USD").sale')
ex=${ex:1:-1}
echo $ex

