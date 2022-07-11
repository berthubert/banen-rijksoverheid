#!/bin/sh
mkdir -p listing
for a in $(seq 1 500) 
do 
	curl "https://www.werkenvoornederland.nl/vacatures?_hn%3Atype=resource&_hn%3Aref=r35_r1_r4&_hn%3Arid=append-next-page-results&pagina=$a"   -H 'authority: www.werkenvoornederland.nl'   -H 'accept: */*'   -H 'accept-language: en-US,en;q=0.9'   -H 'cache-control: no-cache'   -H 'cookie: _ga=GA1.2.1453073791.1644833991; XSRF-TOKEN=a52dadc9-3208-44b0-bbe6-9e7aacc5ba44; BACKEND=site1; _pk_ses.246.dffd=*; _gid=GA1.2.1320661302.1656797976; _pk_id.246.dffd=06d2e175a79c393e.1644833991.6.1656798082.1656797976.; JSESSIONID=7DEFC2CBF3711A9C39C96A097EBD75DF'   -H 'pragma: no-cache'   -H 'referer: https://www.werkenvoornederland.nl/vacatures?pagina=2'   -H 'sec-ch-ua: ".Not/A)Brand";v="99", "Google Chrome";v="103", "Chromium";v="103"'   -H 'sec-ch-ua-mobile: ?0'   -H 'sec-ch-ua-platform: "Linux"'   -H 'sec-fetch-dest: empty'   -H 'sec-fetch-mode: cors'   -H 'sec-fetch-site: same-origin'   -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36'   --compressed \
	> listing/$a.html 
done
