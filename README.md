**RemoteScheduler** allows you to drive distant Heroku app workers, scheduling their tasks,
using [Resque Scheduler](http://github.com/bvandenbos/resque-scheduler/) on Heroku.

Works on bambo-ree-1.8.7 and bamboo-mri-1.9.2

All you need is to schedule your tasks in _resque\_schedule.yml_, to deploy and define these ENV vars
(using _[heroku config ...](http://docs.heroku.com/config-vars)_) :

* RESQUEWEB_LOGIN (to connect to the resque-web utility)

* RESQUEWEB_PWD

* REMOTE\_REDIS\_URL (the [Redis To Go url](http://addons.heroku.com/redistogo) of your main app)

Then, you're ok to run one (and only one) worker which will act as the scheduler for your
distant main app.

I extracted this from the coming soon release of **[SubMate](http://www.submate.com)** which needs very
frequent tasks that Heroku's default cron can't handle.

Don't hesitate to contact me for any question or request !
