cd /Users/krishnan/sandbox/chickenlover
[ -f comments.json.bkup ] && rm comments.json.bkup
[ -f comments.json ] && mv comments.json comments.json.bkup
echo MMM-DD-YYYY
git status
git pull
python nytapi.py && git add comments.json && git commit -a -m "comments.json as of {$1}" && git push origin gh-pages

