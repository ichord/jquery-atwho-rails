### Rails < 3.1
#### Install
issue commnd line bellow:  
`rails generate jq_atwho:install`  
then It will show in `public/assets/[javascript|stylesheets]/` directory.

### Rails >= 3.2
#### Install
add this gem in `Gemfile` like this:  
`gem jq_atwho-rails`  
then add this line in `app/assets/javascripts/application.js`  
add `app/assets/stylesheets/applications.js`  
` //= require jquery.atwho `

### Usage
bind your textarea
```javascript
data = ['tom','john'];
$('textarea').atwho({'debug':true,'data':data});
```
that's it, check it out!
more details in [At.js](https://github.com/ichord/At.js) on github.
