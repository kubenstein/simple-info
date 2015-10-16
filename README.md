SimpleInfo [![Build Status](https://travis-ci.org/kubenstein/simple-info.png?branch=master)](https://travis-ci.org/kubenstein/simple-info)
=============

Store, add or edit all kind of info in your git repositiory without polluting git history.

Use Cases
---------

- Often I like to store info about infrastructure configuration. Info such as: where project domain is registered or where emails or web app are hosted.
- Often I store git commands setuping my personal username and email so in case of some quick fix I can commit as myself.
- In case you want to store some specific deployment instructures I wrote [git-reminders](https://github.com/kubenstein/git-reminders). Please check it out.

Instalation
---------

```
gem install simple-info
```

Usage
---------
To add or edit info:

```
  simple-info edit
  # your fav text editor opens, so you can type your instructions
```

To see stored info:

```
  simple-info
  simple-info show
```

To push info to remote:

```
  simple-info push origin
```

To push info from remote:

```
  simple-info pull origin
```

Internals
---------
SimpleInfo uses annotated git tag. Special tag is created on top of first commit.
