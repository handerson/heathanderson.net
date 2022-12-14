What files can you override? As far as I know anything in the [develop/priv/static/](https://git.pleroma.social/pleroma/pleroma/-/tree/develop/priv/static) directly can be overwritten by placing a file with the same name in the `/var/lib/pleroma/static/` directory on your server. So if you need to change your favicon, terms of service, or robots.txt that's where you'll need place your updated files.

Notable files you may want to replace:

- [static/instance/panel.html](https://git.pleroma.social/pleroma/pleroma/-/blob/develop/priv/static/instance/panel.html)
- [static/favicon.png](https://git.pleroma.social/pleroma/pleroma/-/blob/develop/priv/static/favicon.png)
- [static/robots.txt](https://git.pleroma.social/pleroma/pleroma/-/blob/develop/priv/static/robots.txt)
- [static/static/terms-of-service.html](https://git.pleroma.social/pleroma/pleroma/-/blob/develop/priv/static/static/terms-of-service.html)
- [static/index.html](https://git.pleroma.social/pleroma/pleroma/-/blob/develop/priv/static/index.html) (be careful with this one)


## index.html notes

File to create: 

`/var/lib/pleroma/static/index.html`

If you need to embed something like Google Analytics or [umami](https://umami.is/) analytics you can copy the existing [static/index.html](https://git.pleroma.social/pleroma/pleroma/-/blob/develop/priv/static/index.html) and add whatever script or html you want. It is very possible you'll need to redo this whenever you update Pleroma. 

If you are adding resource from another domain you may need to either set up a proxy or change the [content security policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP) for your server. Pleroma will set a content security policy that will block loading from other domains if [http security](https://docs.pleroma.social/backend/configuration/hardening/#http_security) is set to true. 