```
         __         _____        __
 ______  \ \      _/ ____\____ _/  |______ ______________  ______  _  __
/_____/   \ \     \   __\\__  \\   __\__  \\_  __ \_  __ \/  _ \ \/ \/ /
/_____/   / /      |  |   / __ \|  |  / __ \|  | \/|  | \(  <_> )     /
         /_/       |__|  (____  /__| (____  /__|   |__|   \____/ \/\_/
                              \/          \/
```

### Installation steps

- Install Virtual Box
- Install [Vagrant](http://www.vagrantup.com/downloads)
- Run `vagrant up`. This will provision the box
- Run `vagrant ssh` to access the box
- Run `export DISPLAY=:10` (this is temporary due to a bug in provisioning)
- Run `cd /fatarrow`. This is where the source is located
- Run `npm install`
- Run `gulp`
