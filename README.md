SimpleInfo
=============

Store, add or edit all kind of info in your git repositiory without polluting git history.

Use Cases
---------

- Often I like to keep some info about infrastructure configuration of a project. Such as that project domain is registered in this company, emails are hosted here and web app in some other places.
- Often I store git commands setuping my personal username and email in git repository so In case of some quick fix I can commit as myself.

Instalation
---------
I will push the gem to rubygems soon, but for now you can install it using [specific_install](https://github.com/rdp/specific_install):

```
gem install specific_install
gem specific_install -l https://github.com/kubenstein/simple-info.git
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
