# A Slug URL Generator from Strings for iOS (Objective-C)

If you need to create a slug url that will work on every browser, try this!
This is still a beta version with some work in progress

##Installation
Simply copy the JLSlug folder to you project.
  
![Add to Project](https://raw.github.com/joaomlopes/slug-ios/master/add.png)
  
and import it to your class.
  
![Import Class](https://raw.github.com/joaomlopes/slug-ios/master/import.png)
  
Then, call the function <code>[JLSlug str_slug:@"Some String With Many Spécial Chãrâcters.And Numbers:123€"];</code>
  
##Special Characters
When you wanna use special characters with their own names and meanings, such as money currencies and sentences connectors, it will convert to be like:
  
Character | Conversion
:-------------: | :-------------:
$ | -dollar-
€  | -euro-
¥ | -yen-
£ | -pound-
@ | -at-
& | -and-
% | -percent-
  
## Support

Bugs and feature request are tracked on [GitHub](https://github.com/joaomlopes/slug-ios/issues). Please feel free to opening a new issue or submitting a new pull request.

## Credits

The code on which this package is principally developed and maintained by [João Lopes](https://twitter.com/shakurlopes).

## License

This package is released under [the MIT License](LICENSE).
