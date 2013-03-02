Capistrano recipe for CodeIgniter
===

### To install:

    $ cp Capfile codeigniter_install_dir/
    $ cp -r config codeigniter_install_dir/application/

### To deploy:

    $ cap deploy:setup
    $ cap deploy

### Deployment directory structure:

    $ tree -L 3 /home/httpd/my.domain.com/
    /home/httpd/my.domain.com/
    ├── application -> /home/httpd/my.domain.com/current/application
    ├── current -> /home/httpd/my.domain.com/releases/20130224145516
    ├── html -> /home/httpd/my.domain.com/current/html
    ├── releases
    │   └── 20130224145516
    │       ├── Capfile
    │       ├── REVISION
    │       ├── application
    │       ├── html
    │       ├── log -> /home/httpd/my.domain.com/shared/log
    │       ├── public
    │       ├── system
    │       └── tmp
    ├── shared
    │   ├── log
    │   ├── pids
    │   └── system
    └── system -> /home/httpd/my.domain.com/current/system
    
    16 directories, 2 files

### More info:

http://d.hatena.ne.jp/ngmy/20130228/1362057817
