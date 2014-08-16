### Usage
---
Bind your textarea

```javascript
$(function(){
    data = ['tom','john'];
    $('textarea').atwho({at:"@", 'data':data});
});
```

that's it, check it out!
more details in [At.js Home Page](http://ichord.github.com/At.js/)

### Installation
---
#### Rails 3.0.x
Issue command line bellow:  
`rails generate atwho:install`  
then It will show in `public/[javascript|stylesheets]/` directory.

#### Rails >= 3.1.x
Add this gem in `Gemfile` like this:  
`gem jquery-atwho-rails`  

then add    
` //= require jquery.atwho `  to `app/assets/javascripts/application.js` 
and add ` //=require jquery.atwho ` to `app/assets/stylesheets/applications.css`  

#### History Versions 
All in [At.js](https://github.com/ichord/At.js) project.

### Development
---
#### Test generator
Just issue  
`bundle` then `appraisal rails30 rspec`
