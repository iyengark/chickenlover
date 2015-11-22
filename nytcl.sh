cd /Users/krishnan/sandbox/chickenlover
rm comments.json.bkup && mv comments.json comments.json.bkup
echo MMM-DD-YYYY
git pull
python nytapi.py && git add comments.json && git commit -a -m "comments.json as of {$1}" && git push origin gh-pages

