javascript: (function () {
    var newSS, styles = '* { background: black ! important; color: white !important } :link, :link * { color: #AAAAFF !important } :visited, :visited * { color: #9191FF !important }';
    if (document.createStyleSheet) {
        document.createStyleSheet("javascript:'" + styles + "'");
    } else {
        newSS = document.createElement('link');
        newSS.rel = 'stylesheet';
        newSS.href = 'data:text/css,' + escape(styles);
        document.getElementsByTagName("head")[0].appendChild(newSS);
    }
})();