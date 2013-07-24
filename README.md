### Usage
---
bind your textarea

```javascript
data = ['tom','john'];
$('textarea').atwho({at:"@", 'data':data});
```

that's it, check it out!
more details in [At.js Home Page](http://ichord.github.com/At.js/)

### Installation
---
#### Rails 3.0.x
issue commnd line bellow:  
`rails generate atwho:install`  
then It will show in `public/[javascript|stylesheets]/` directory.

#### Rails 3.1.x
add this gem in `Gemfile` like this:  
`gem jquery-atwho-rails`  

then add    
` //= require jquery.atwho `  
to `app/assets/javascripts/application.js`  
and `app/assets/stylesheets/applications.css`  

#### History Versions 
All in [At.js](https://github.com/ichord/At.js) project.

### development
---
#### Test generator
just issue  
`bundle` then `rspec`
