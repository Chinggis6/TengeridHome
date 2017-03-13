# Commons

## Templates
> {{Template}}
Information

# Wikipedia
> Wikidata description
> Shown in mobile page (m.) and Mobile app
wgMFDescription

# Wiki markup

''italic''
'''bold'''
'''''bold italic''''' (five apostrophes)

= heading 1 =
====== heading 6 ======

---

:Indent

; Term : Definition (dl, dt, dd)

; Term
: Def 1
: Def 2

<!-- comment -->
{{Template}}

#REDIRECT [[Article name]]

[[Article name]]
[[Article name|Custom title]]

[[wt:Term name]]
[[Term name|]] (without Wiktionary: prefix)
[[wt:de:Term name]] (other languages)
[[:Category]] (show category link rather than adding the page into)

[[File:wiki.png|thumb|center|150px|150px|alt=text|link=page]]
[[Media:Guitar.ogg]] (can be used to link images, directly, without displaying image pages)

[URL Title]

## Tags

<nowiki>don't display wiki text</nowiki>

> Implemented by Pygments (Python), formerly GeSHi (PHP)

> https://www.mediawiki.org/wiki/Extension:SyntaxHighlight

<syntaxhighlight lang=c line start=55 highlight="1,4,9-12" inline>code goes here</syntaxhighlight>


> No arrow for  external links
<span class="plainlinks"> [URL Title] </span>

<ref name=Name>{{cite web|url=|title=|first=|last=|publisher=|date=}}</ref>

<gallery></gallery>

## Templates

{{multiple images
image1=
caption1=
link1=
image2=
caption2=
link2=
footer=
}}

Templates use modules which are written in Lua

### Lua modules
{{#invoke:module|function}}
