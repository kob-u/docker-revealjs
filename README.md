# docker-revealjs

Dockerized [reveal.js](https://github.com/hakimel/reveal.js).  
This image using markdown mode.

### how to use
mount `presentation.md` and `assets` dir.

```
sudo docker run -p 8000:80 -v /path/to/your/presentation.md:/usr/share/nginx/html/presentation.md -v /path/to/your/assets:/usr/share/nginx/html/assets --rm koba1t/revealjs-md
```

if you want to customize [index.html](https://github.com/hakimel/reveal.js/blob/master/index.html)

```
sudo docker run -p 8000:80 -v index.html:/usr/share/nginx/html/index.html -v /path/to/your/presentation.md:/usr/share/nginx/html/presentation.md -v /path/to/your/assets:/usr/share/nginx/html/assets --rm koba1t/revealjs-md
```


---

### License

[reveal.js](https://github.com/hakimel/reveal.js) is MIT License.  
Copyright (C) 2018 Hakim El Hattab, http://hakim.se
