{
 "name"         : "Navigate [COLOR FF0084FF]-[/COLOR] AK-47 ([COLOR FF0084FF]Q[/COLOR])",
 "repository"   : "repository.Agent-47",
 "plugin"       : "plugin.video.AK-47",
 "priority"     : 800,
 "id"           : "navigate.ak47.q",
 "filters"      : {},
 "postprocess"  : "",
 "movies"       : [
  [
   {
    "link"      : "plugin://plugin.video.AK-47/",
    "steps"     : [
     ".*movies.*",
     "@anycontaining:2016|2015|NEW|250|AFDAH",
     ".*{title}.*{year}.*"
     ],
    "action"    : "PLAY"
   }
  ]
 ],
 "tvshows"      : [
  [
   {
    "link"      : "plugin://plugin.video.AK-47/",
    "steps"     : [
     ".*shows.*",
     "($$.*$$){clearname}($$.*$$)",
     ".*season {season}.*",
     ".*s{season:02d}.*e{episode:02d}.*|.*s{season}.*e{episode}.*"
     ],
    "action"    : "PLAY"
   },
   {
    "link"      : "plugin://plugin.video.AK-47/",
    "steps"     : [
     ".*shows.*",
     ".*$${clearname}$$.*",
     ".*s{season:02d}.*e{episode:02d}.*|.*s{season}.*e{episode}.*"
     ],
    "action"    : "PLAY"
   }
  ]
 ],
 "musicvideos"  : [],
 "music"        : [],
 "live"         : [
  [
   {
    "link"      : "plugin://plugin.video.AK-47/",
    "steps"     : [
     "($$.*$$).*live.*($$.*$$)",
     "@anynotcontaining:FilmON",
     "({name|ws(%20)|{name|ws(-)|{name|ws(.)})"
     ],
    "action"    : "PLAY"
   },
   {
    "link"      : "plugin://plugin.video.AK-47/",
    "steps"     : [
     "($$.*$$).*live.*($$.*$$)",
     "@anynotcontaining:FilmON",
     ".*({name|ws(%20)|{name|ws(-)|{name|ws(.)}).*"
     ],
    "action"    : "PLAY"
   },
   {
    "link"      : "plugin://plugin.video.AK-47/",
    "steps"     : [
     "($$.*$$).*live.*($$.*$$)",
     "@anynotcontaining:FilmON",
     "({basename}|{basename|ws(-)}).({extension}|{extension|number_to_text()}|{extension|text_to_number()})"
     ],
    "action"    : "PLAY"
   },
   {
    "link"      : "plugin://plugin.video.AK-47/",
    "steps"     : [
     "($$.*$$).*live.*($$.*$$)",
     "@anynotcontaining:FilmON",
     ".*({basename}|{basename|ws(-)}).({extension}|{extension|number_to_text()}|{extension|text_to_number()}).*"
     ],
    "action"    : "PLAY"
   }
  ]
 ]
}