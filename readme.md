For execute this project we will need a environment with PHP 7, mysql and Ruby on rails. (in my case i used a vagrant box with php 7 and mysql and only configured the rails)
I shared my vagrant environment, you can access with the follows command: 
vagrant init lancedon/RubyWithPHP

First start creating the database (db.sql on /), one way to do that is using phpmyadmin and import this file on the tool.

After that, sync all the app files with your web server folder, in  my case the /var/www 

You can acess the http://yourServerIP/php to see all the features avaliable in this app.


