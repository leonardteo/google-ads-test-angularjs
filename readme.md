# Google Adsense Angular JS Test

This is a demo of getting Google Adsense to work with AngularJS

[View it here](http://leonardteo.github.io/google-ads-test-angularjs)

For more information, please contact [Leonard Teo](leonard@artstation.com).

## Description of the problem
p AngularJS (created by Google) is a single-page-application framework. It loads in content dynamically without a full refresh of the DOM (Document Object Model). This appears to be incompatible with Adsense and DFP.

To fix this, pass in a random value to the ad-region parameter. See the source code for more details.