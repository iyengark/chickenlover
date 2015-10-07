// worker.js 
this.onmessage = function (url) {
    getDataFromURL(url.data);
}
var HttpClient = function () {
this.get = function (Url, Callback) {
        HttpRequest = new XMLHttpRequest();
        HttpRequest.onreadystatechange = function () {
        if (HttpRequest.readyState == 4 && HttpRequest.status == 200) {
                console.log(HttpRequest.responseText.length);
                Callback(HttpRequest.responseText);
            }              
        }        
        HttpRequest.open("GET", Url, true);
        HttpRequest.send(null);
    }
}
function getDataFromURL(url) { 
    Client = new HttpClient();
    Client.get(url, function (answer) {
        // marking time. the sending mark is in main thread
        console.log("responding at  "+window.performance.now());
        postMessage(answer);
    });  
}
