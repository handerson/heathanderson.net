<blockquote>Harp serves Jade, Markdown, EJS, CoffeeScript, Sass, LESS and Stylus as HTML, CSS & JavaScript—no configuration necessary. <a href="https://harpjs.com/">- harpjs.com</a></blockquote>

<img src="/images/posts/harp-blog-header.png" alt="Screen capture showing the header of the example blog" class="shadow" /> [Harp](https://harpjs.com/) is a straight-forward and easy to use static site generator and server. It isn't updated very often, but it still gets the job done very well for simple sites. I recently decided to use it for some simple brochure-type sites I maintain to replace compass. When it came time to update this site, I decided to replace jekyll with harp to keep maintenance simple. The lack of any built-in blogging functionality became a minor pain point. So I made a simple test project:  [handerson/harp-blog-example](https://github.com/handerson/harp-blog-example) with basic pagination, rss feed, and syntax highlighting. You can see a demo here: [https://handerson.github.io/harp-blog-example/](https://handerson.github.io/harp-blog-example/).

<img src="/images/posts/harp-blog-footer.png" alt="Screen capture showing the footer of the example blog" class="shadow right"> The pagination is very simple. The site index shows the 3 newest posts with prev/next buttons at the bottom of the page. Beyond that there isn't so much pagination as there are previous and next buttons at the bottom of each blog post. It works for what I need, but may not be enough for all use cases. The posts/index page shows a list of all posts.

There is [prism](https://prismjs.com/) for syntax highlighting, and [pico.css](https://picocss.com) for styling. 


