eZ English
=========

An eZ Publish translation extension which aims to simplify the English terms and phrases currently used in eZ Publish.

In addition it aims to tidy up the UI, by:

* only showing elements as needed
* grouping elements logically
* consistency of terminology


Installation
==========================

1. Extract the extension into your extension directory

2. Add to the [ExtensionSettings] section in /settings/override/site.ini.append.php as an ActiveExtension[] or to /settings/siteaccess/<your-site>/site.ini.append.php 
as an ActiveAccessExtension[] (e.g ActiveAccessExtension[]=ezenglish)

3. In the same site.ini, under [RegionalSettings], add or change your Locale setting to "eng-NZ@simple".  You don't need to do this for
   any other setting.  If you're using eng-GB or similar as your default locale, just change the folder under ezenglish/translations to
   "eng-GB@simple" or similar.
   
4. Clear your ini & translation caches from the ezpublish root directory:
   php bin/php/ezcache.php --clear-tag=ini     #use -s <your_siteaccess> if applicable
   php bin/php/ezcache.php --clear-tag=i18n