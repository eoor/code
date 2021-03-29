from requests import get

host = "@"
domain = "example.com"
password = "****"
ip = get('https://api.ipify.org').text
get(f"https://dynamicdns.park-your-domain.com/update?host={host}&domain={domain}&password={password}&ip={ip}")