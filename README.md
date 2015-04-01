Angular site example compiled with Gulp
==

Need node.js

See tasks in gulpfile.js folder.

**Copmile**

    npm i

  development

    gulp

  production

    NODE_ENV=production gulp build

**Create celan gh-pages branch**

    git checkout --orphan gh-pages
    git rm -rf .
    touch README.md
    git add README.md
    git commit -m "Init gh-pages"
    git push --set-upstream origin gh-pages
    git checkout master
