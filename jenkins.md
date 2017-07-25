# Jenkins

## how to push tags with git publisher

* Add something like this to your shell script:

```shell
#!/bin/sh
APP_BUILD_NUMBER=`npm version patch`
echo APP_BUILD_NUMBER=${APP_BUILD_NUMBER} > build.properties
```

* then add build step Inject environment variables and set Properties File Path to `$WORKSPACE/build.properties`
* after that, $APP_BUILD_NUMBER is accessible in all build steps as environment variable. Click `Add tag` in Git Publisher (Post-build action) and set tag to push to $APP_BUILD_NUMBER.
