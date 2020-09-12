## Short Links for the Research Notebook

I have created the short links using the
[git.io service](https://github.blog/2011-11-10-git-io-github-url-shortener/)
which is affiliated with GitHub.

The links were created using the command line,
with a command of the form:

```
$ curl -i https://git.io \
  -F 'url=https://github.com/eric-brechemier/cook250/tree/master/research-notebook/p02-maui' \
  -F 'code=cook250:maui'
```

I then created a script to make the operation safer:

```
$ ./short-link.sh p02-maui
```

I chose the prefix `cook250:` to get a unique and consistent short code
for all pages.

The list below allows to check all the links.

### Pages

  1. 𐄂 https://git.io/cook250:cook250
  2. ✓ https://git.io/cook250:maui
  3. ✓ https://git.io/cook250:terra-australis
  4. ✓ https://git.io/cook250:zealandia
  5. ✓ https://git.io/cook250:ring-of-fire
  6. ✓ https://git.io/cook250:hawaiki

