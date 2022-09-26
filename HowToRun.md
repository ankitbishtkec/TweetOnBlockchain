# How to run ?

1- Do set up of dev env using: https://app.pluralsight.com/library/courses/blockchain-fundamentals/table-of-contents

2- Download Ganache

3- Start a local Ethereum network to Ganache.

4- Change local setting files to link to ganache local network refer: https://github.com/ankitbishtkec/TweetOnBlockchain/commit/4baf2a195af2ed9e31d4e93ed6fc2a60d4bc6b7c

5- open powershell in admin and go to folder of code

6- Run command:

truffle console --network developmentLocalGanache

7- Inside Truffle console. Run:

truffle migrate;
var instance; ViewManager.deployed().then(function (deployed) { instance = deployed; } );

8- Inside Truffle console. To add view:

instance.AddView("<your view.>");

9- Run to get all views:

instance.GetAllViews.call()

10- In Ganache, one can see transactions tab containing views too
