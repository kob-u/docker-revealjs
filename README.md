# docker-revealjs

Dockerized [reveal.js](https://github.com/hakimel/reveal.js).  

### how to use
mount `presentation.md` and `assets` dir.

```
sudo docker run -p 8000:8000 -v presentation.md:/presentation.md -v assets:/assets --rm kob-u/docker-revealjs
```

if you want to customize [index.html](https://github.com/hakimel/reveal.js/blob/master/index.html)

```
sudo docker run -p 8000:8000 -v index.html:/index.html -v presentation.md:/presentation.md -v assets:/assets --rm kob-u/docker-revealjs
```


---

### License

[reveal.js](https://github.com/hakimel/reveal.js) is MIT License  
Copyright (C) 2018 Hakim El Hattab, http://hakim.se
