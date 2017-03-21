// Move Categories Top for Wikis

// As by selecting Cologne Blue skin at Appearance tab of Preferences special page

// Or by appending ?useskin=cologneblue to the URL

// https://en.wikipedia.org/wiki/Special:Preferences#mw-prefsection-rendering

// https://en.wikinews.org/wiki/Help:User_style#Moving_categories_to_top
 
jQuery(function() {
  if (mw.config.get('wgCanonicalNamespace') === "Special") return;
  var cats = document.getElementById('catlinks');
  var bc = document.getElementById('bodyContent');
  if ( bc !== null ) {
    bc.insertBefore(cats, bc.childNodes[0]);
  }
});
