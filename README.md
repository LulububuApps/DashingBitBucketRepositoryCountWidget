## Description

Simple [Dashing](http://shopify.github.com/dashing) job to display the counts of all [Bitbucket](https://bitbucket.org) repositories you own. Uses [Bitbucket's API](https://confluence.atlassian.com/display/BITBUCKET/Using+the+Bitbucket+REST+APIs).
Inspired by [jeroenbegyn's](https://gist.github.com/jeroenbegyn) [Bitbucket followers job for Dashing](https://gist.github.com/jeroenbegyn/5385092). Also it uses [vongrippen's](https://github.com/vongrippen) [BitBucketAPI](https://github.com/vongrippen/bitbucket), thanks for this!

# Example

Check this screenshot:

![Screenshot](https://cloud.githubusercontent.com/assets/5159398/6109941/d1f08110-b07e-11e4-9baf-49302b3a567d.png)

##Usage

To use this widget put the `bitbucket_repository_count.rb` file in your `/jobs` folder.

To include the widget in a dashboard, add the following snippets to the dashboard layout file:
    
    <li data-row="1" data-col="2" data-sizex="1" data-sizey="1">
      <div data-id="bitbucket_repository_count" data-view="Number" data-title="Bitbucket repositories"></div>
    </li>

##Settings

You'll need to add the Bitbucket username or the team name you want to count the repositories of. Also you need to pass a username and a password since I am not able to getting the oauth stuff work...

The repositories are fetched every 5 minutes, but you can change that by editing the job schedule.

##Advanced

Use [DashingLongNumberWidget](https://github.com/SocialbitGmbH/DashingLongNumberWidget) if you dont want `1000` repositories displayed as `1K`.

Example:

    <li data-row="1" data-col="2" data-sizex="1" data-sizey="1">
      <div data-id="bitbucket_repository_count" data-view="Longnumber" data-title="Bitbucket repositories"></div>
    </li>