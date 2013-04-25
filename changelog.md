
The following date is in changelog file of At.js
https://github.com/ichord/At.js/blob/master/CHANGELOG.md

* sync at 2013-04-23 - At.js(c3845e5)

#### 2013.4.15 - v0.2.4

* `data` setting will be used to load data either local or remote. If it's String as URL it will preload data from remote by launch a ajax request (every times At.js call `reg` to update settings)

* remove default `remote_filter` from callbacks list.
* add `get_data` and `save_data` function to contoller. They are used to get and save whole data for At.js
* `save_data` will invoke `data_refactor` everytime

* will filter local data which is set in `settings` first and if it get nothing then call `remote_filter` if it's exists in callbacks list that is set by user.

* 2013.3.12 - v0.2.3 fix some bugs
* 2013.3.1 - v0.2.2 fix some bugs.
* 2013.1.24 updated to v0.2.0.
* 2012.7.1 remove the mirror(copy) element of the textarea(inputor) which will disturb css style. increase timeout of displaying the result list view.
