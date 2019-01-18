# docker-revealjs

Dockerized [reveal.js](https://github.com/hakimel/reveal.js).  
This image using markdown mode.

### how to use
mount `presentation.md` and `assets` dir.

```
sudo docker run -p 8000:8000 -v /path/to/your/presentation.md:/presentation.md -v /path/to/your/assets:/assets --rm kobd/docker-revealjs
```

if you want to customize [index.html](https://github.com/hakimel/reveal.js/blob/master/index.html)

```
sudo docker run -p 8000:8000 -v index.html:/index.html -v /path/to/your/presentation.md:/presentation.md -v /path/to/your/assets:/assets --rm kobd/docker-revealjs
```


---

### License

[reveal.js](https://github.com/hakimel/reveal.js) is MIT License  
Copyright (C) 2018 Hakim El Hattab, http://hakim.se
