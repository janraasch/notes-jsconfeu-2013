
# jsconf.eu

## 2013

```javascript
    Object.observe(slides, function (addedKnowledge) {

        ep.js.knowledge = ep.js.knowledge + addedKnowledge;

    });
```

[Website](http://2013.jsconf.eu/)

[YouTube](https://www.youtube.com/jsconfeu)

[FlickR](http://www.flickr.com/photos/blank22763/sets/72157635562685455/with/9773333422/)



### Security First

> We're fucked.
> Nothing is 100% secure.

* The dude: [Adam Baldwin](http://andyet.com/team/baldwin/)

* The task: **Audit every single module in npm.**

* The project: [Node Security Project](nodesecurity.io)

* The funny part:

    `npm install coffeescript`

* A good idea:

    `SECURITY.md` or at least `CONTRIBUTING.md` detailing how security concerns should be uttered.

Notes:
He mentioned AngularJS as a good example.



### CSS Modules @ google+

> Web Components:
> tmpl & js & css

* The dudette: [Shubhie Panicker](https://plus.google.com/104404461680012191607/posts)

* The task: Create reusable *web components* for (cross-team) usage all over the g+ eco-system.

* The project(s): [Closure Stylesheets](https://code.google.com/p/closure-stylesheets/) & [Closure Templates](https://developers.google.com/closure/templates/)

* The funny part:

    She gave [almost the same talk at CSSconf.eu 2013.](http://www.youtube.com/watch?v=vAs9tjEkkKk)

* Some good ideas:

    * `requirecss` attribute in templates.
    * Dependency system vs. ~~developer discipline~~.
    * Avoid *specifity wars*.
    * Deliver initially needed css in one single file. Afterwards only load what is needed and has not been loaded already (with the help of js).

Notes:
CSS modules not so simple. *OOCSS* helps but... Weird overwrite rules. Goal: minimal. incremental.



### Generators and promises

```
    node --harmony-generators script.js
```

* The dude: [Forbes Lindesay](http://www.forbeslindesay.co.uk/)

* The task: Let's say »looping over infinite sequences« or »avoid callback hell«.

* Problems with async solutions today:
    * Conflates input with output.
    * Doesn't work with control flow primitives (can't pause for loop).
    * Purely based on conventions.

* Example: `cd examples/promises`

* The slides: http://pag.forbeslindesay.co.uk/

Notes:
Really go through the slides, if you like, e.g. to have a look at the `readJSON` example.



### Stop breaking the web

> The browser is a static document viewer.
> As long as I am using a browser, I expect URLs to work.

* The dude: [Tom Dale](http://tomdale.net/)

    You may know him as Mr. [Progressive enhancement is dead, baby.](http://tomdale.net/2013/09/progressive-enhancement-is-dead/)

* The idea: **RMVC** - Router-MVC.

* The project: [router.js](https://github.com/tildeio/router.js) (which coincidentally is part of [ember.js](http://emberjs.com/)).

Notes:
Lot's of ranting. Like, e.g. some story about how phone numbers were introduced in the 1870s,
because someone was afraid of measles, and how this ridiculous idea of typing some number into your smart phone
to talk to a person is still valid.



### JS Responsibility

> 0.1 + 0.2 = 0.30000000000000004

* The dude: [Brendan Eich](https://brendaneich.com/)

    aka `/be` aka `godfather.js`.

* The idea: `allthings.js`

* Faster specs, maybe/hopefully yearly.

* [ES6 Plans](https://wiki.mozilla.org/ES6_plans) already old news.

* `lowlevel.js` aka `asm.js`

* *Value Objects* to add simple types e.g. decimal, complex,...

* Overload operators, e.g. `==`

* The fun part:

    Brendan Eich rocket launching bots in a game within a game demo running Unreal on Firefox.



### UXing without a UXer

> When you're uncomfortable showing it, show it!

* The dudette: [Chrissy Welsh](http://chrissywelsh.com/)

* The idea is in the title.

* *Vision*. One vision and keep it simple!

* Users

* Wire-Frames

* Prototype early. Show it. Feedback!



### O.o

* Today
    * Angular: Dirty-checking
    * Ember: Kinda event-loop. Raw-data vs. Observable special objects.
    * Backbone: None.

* Object.observe()
    * Raw objects.
    * valueBeforeChange, ChangeType = New,…, affectedProperties

* [Polymer/observe-js](https://github.com/Polymer/observe-js)

* [Demo](http://www.simpl.info/observe/) in Chrome Canary with [JavaScript harmony flag](chrome://flags/#enable-javascript-harmony).



### Stuff.js

* Colorful logo in command line for ep7, like yeoman.
* Test case generator with yo.
* https://github.com/mariusGundersen/Moquire - project for mocking AMD modules during testing
* Lightning talks (5-10 minutes) in community of practice?
* nodebots.io, jonny-five



### It's all raw notes from here on out



### Patrick Dubroy - Parsing, Compiling, and Static Metaprogramming
* Need to check it out.
* Cool for pre-processing.



### Marius Gundersen - A comparison of the two-way binding in AngularJS, EmberJS and KnockoutJS
Seems interesting. Definitely have look. See O.o and React.js



### Don't ask what JS can do for you
Performance
* DOM operations
* Memory management
* Function calls, interation



### JS Interpreter Interpreted

> Software's primary goal is to **manage complexity**

* Could do more research on that.
* Context
    * Global
    * Function
    * Eval
* Execution-Context is created by
    * Activation Object, e.g. arguments
    * Scope is defined
    * ?Not sure? Variable instantiation happens
        * Parameters
        * Function declarations
        * variable names
        * »this« is defined.
* Scope is context's variable object + calling context's Variable Object



### Hardware

* nodebots.io
* jonny-five



### Revisiting window managers
* Crazy.
* Window manager in node.
* Create workspaces in seconds.
* Connect all kinda UIs easily. Like on the console.



### Brackets.io
* Extensible sandbox editor.
* Written with HTML, JS, CSS.
* AdobeResearch



### No Backend
* Hoodie.js
* Backend as a service
* Move data away from big players
* Everybody running his/her own data server
* Whatever front ends can work on the data



### Native.js
Objective-C to JavaScript bridge in iOS7 and OSX 10.9



### Buddycloud
Protocol over APIs



### &yet
* People First
* People are more important than software



### Memory Management
* Chrome puts multiple tabs in the same process. One crashes they all do.
* **Value Path**
     Garbage = Whatever can't be reached from Root
* Costs
    * new, new, init, => memory allocation
    * at some point this forces GC to be done. takes milliseconds!
* V8
    Split Values in old and young.
    * Young: fast alloc, fast collection
    * Old: fast alloc, slower collection, **infrequently** collected
    * Death-rate: 80% on Young.
* Collection pauses your application.!!!! (Dropped frames. UI suxx)
* Statistics
    * window.performance.memory.
    * **Incognito Tab** !!!



### Jank
* jankfree.org
* http://www.html5rocks.com/en/features/performance
* about:tracing
* Renderer.Main
* jank-busting 101
    * How much are you painting
    * … Lot's of things …



### User Auth
* Paypal is now .js driven. Douglas Crawford joined. Backend with node? Seriously?
* Authentication vs. Authorization
* Ways
    * Basic Auth (old, not really secure)
    * OAuth 1.0 in 2007. Clunky library.
    * OAuth 2.0 in 2012 simpler flow, more secure, more scenarios.
        still »attack surface everywhere«. Usually implemented with security improvements. (Like at @paypal :))
    * IDentification
        * OpenID on the way down.
        * BrowserID (Mozilla)
* Identity providers
    * Social vs. concrete. depends… :)
* Other places for auth
    * JSONP
    * CORS. Cross-Origin Request Sharing. Look it up!



### Forrest Oliphant: vj.js: design for hackability and data flow programming in the browser
Seems interesting. Examples: http://meemoo.org/hack-our-apps/



### Pointer Events - Pointing to the future
* On surface. Went down right after the intro :) Kept going though.
* No longer works
    * hover
    * Touch targets vs. click target. Size!
    * Target positioning, e.g. tablet-landscape => on the sides

Interaction areas vs. Reading areas
* Pointer Events - joint Proposal with Mozilla
    * Pretty much an evolution on mouse
    * ONE new event. pointercancel (e.g. orientation change on mobile)
    * new attributes, e.g. pointerType, pointerId (e.g. 2-3 fingers on a screen), pressure, tiltX, tiltY (pen for example). still clientX, clientY, and so on.

* demo: finger painting application.
    PointerID  kann er leider nicht zeigen, weil er keine touch events machen kann, weil er den Bildschirm vom surface auf'm beamer hat.
    * IE10. Supports it. Pre-fixed version.
    * IE11. unprefixed.
    * Polyfills. Hand.js, Points.js



### Creating natural simulations in a web browser
* github.com/foldi vanilla-js :) !!!
* What makes a system feel natural: Details (Which ones though?)
    * Variation
    * Randomness
    * Ordered complexity



### Burnout
* Learn to stop
* Start with something shit
* Let action create motivation
* Create patterns for personal serendipity (time 4 the unexpected)
* Do sth different



### React.js
* build components not templates and js
* separation of concerns
    * reduce coupling
    * reduce cohesion
* »Templates encourage a poor separation of concerns«
    * Tidly couples controller to template bc. View-Model has values dependend on template
    * *Display logic and markup are highly cohesive* they just are
* Template do not separate concerns, just technology
    * Templates are under-powered (includes are hard to track dep)
* Others are rethinking stuff that's already there. (angular: scope)
* You get
    * reusablity
    * composablity
    * unit testable



* What about working with designers
    * JSX preprocessor
* Components are rerendered every time the data changes.
* (Better then dirty checking which can be expensive)
* Rerendering on every change seems like a bad idea.
    * Virtual DOM and virtual event system optimised for small memory foot print.
    * Only update the diff of new virtual dom vs old virtual dom
    * It's fast, bc DOM is slow
    * Batched reads and writes
    * Usually faster than manual DOM ops
* automatic top-level event delegation
* hooks for custom update logic
* virtual DOM => run in node.js
* Experiment: Render whole app in web worker
* connection to functional reactive programming?
