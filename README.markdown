Radiant *Include Tag* extension
===============================

This extension adds a new tag to the Radius template language: <r:include />

It includes a file in the directory RAILS_ROOT + /app/views/layouts/ and interpret it as a Haml file.

More information about Haml: http://haml-lang.com/

Installation
------------

1) Unpack/checkout/export the extension into vendor/extensions of your project.

2) Restart your server and create a Radius layout.

Usage
-----

In your Radiant layout, you can now use:

	<r:include file="layout_home.html.haml" />

The tag looks for a file in your /app/views/layouts/ directory named layout_home.html.haml .

Contributors
------------

* [Philipp Schilter] (http://www.screenconcept.ch/)
* [Mischa Schindowski] (http://www.screenconcept.ch/)

License
-------

This extension is released under the MIT license, see the [LICENSE](master/LICENSE) for more
information.

