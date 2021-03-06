=== What Would Seth Godin Do ===
Contributors: richardkmiller
Donate link: http://richardkmiller.com/
Tags: marketing, segmentation, cookies, Seth Godin, GPL
Requires at least: 2.0
Tested up to: 2.7.1
Stable tag: 1.7

Displays a custom welcome message to new visitors and another to return visitors.

== Description ==

Seth Godin advocates using [cookies](http://en.wikipedia.org/wiki/HTTP_cookie) to distinguish between new and returning visitors to your site:

>"One opportunity that’s underused is the idea of using cookies to treat returning visitors differently than newbies. It’s more work at first, but it can offer two experiences to two different sorts of people." (Source: [In the Middle, Starting](http://sethgodin.typepad.com/seths_blog/2006/08/in_the_middle_s.html))

I built this WordPress plugin to implement Seth Godin’s idea. For WordPress users it reduces the "work at first" to almost nothing.

By default, new visitors to your blog will see a small box above each post containing the words "If you’re new here, you may want to subscribe to my RSS feed. Thanks for visiting!" After 5 visits the message disappears. You can customize this message, its lifespan, and its location. The message can be excluded from Pages if desired.

You can also specify a message for return visitors.

This plugin requires cookies. Users without support for cookies will always see the new visitor message.

New visitors will appreciate some context and background information about your site. This is your chance to offer them a special welcome and invite them to become permanent subscribers.

I can be reached at richard AT richardkmiller DOT com. I appreciate comments and suggestions.


== Installation ==

Installation is easy:

1. Download the WWSGD WordPress plugin and unzip it.
2. Copy `what_would_seth_godin_do.php` to your WordPress plugins (`/wp-content/plugins/`) folder.
3. Activate the plugin on the *Plugin Management* page.
4. Customize settings on the *Settings* page.

That's it!


Subversion (SVN) users can check out the plugin directly from the WordPress.org repository:

[http://plugins.svn.wordpress.org/what-would-seth-godin-do/](http://plugins.svn.wordpress.org/what-would-seth-godin-do/)


== Frequently Asked Questions ==

= Can I position the welcome message before the title or elsewhere on the page? =
>You can position the welcome message in a specific location by using the template tag `<?php wwsgd_the_message(); ?>` in your theme.

== Screenshots ==

1. After activating *What Would Seth Godin Do*, you can configure settings in the Settings -> WWSGD menu.  You can customize the message, its lifespan, and its location. You can also display a message for return visitors.
2. Your welcome message appears before (or after) each post for the specified length of time.
