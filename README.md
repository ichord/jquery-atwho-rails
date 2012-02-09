### Usage
---
bind your textarea

```javascript
data = ['tom','john'];
$('textarea').atwho({'debug':true,'data':data});
```

that's it, check it out!
more details in [At.js](https://github.com/ichord/At.js) on github.

### Installtion
---
#### Rails < 3.1
issue commnd line bellow:  
`rails generate jq_atwho:install`  
then It will show in `public/assets/[javascript|stylesheets]/` directory.

#### Rails >= 3.1
add this gem in `Gemfile` like this:  
`gem jq_atwho-rails`  

then add    
` //= require jquery.atwho `  
to `app/assets/javascripts/application.js`  
and `app/assets/stylesheets/applications.css`  



### Test generator
---
just issue  
`bundle` then `rspec`