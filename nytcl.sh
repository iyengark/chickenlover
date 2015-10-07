cd /Users/krishnan/sandbox/chickenlover
rm comments.json.bkup && mv comments.json comments.json.bkup
python nytapi.py
git pull
git add comments.json
git commit -a -m "comments.json as of MMM-DD-YYYY"
git push origin gh-pages

