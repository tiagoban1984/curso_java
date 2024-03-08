<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>V�deos com Barras de Progresso</title>
</head>
<body>

<h2>V�deos com Barras de Progresso</h2>

<div class="video-container">
    <video class="video-player" width="600" height="400" controls>
        <source src="video1.mp4" type="video/mp4">
        Seu navegador n�o suporta o elemento de v�deo.
    </video>
    <progress class="progress-bar" value="0" max="100"></progress>
</div>

<div class="video-container">
    <video class="video-player" width="600" height="400" controls>
        <source src="video2.mp4" type="video/mp4">
        Seu navegador n�o suporta o elemento de v�deo.
    </video>
    <progress class="progress-bar" value="0" max="100"></progress>
</div>

<script>
    // Obt�m todos os elementos de v�deo e barras de progresso
    var videos = document.querySelectorAll('.video-player');
    var progressBars = document.querySelectorAll('.progress-bar');

    // Adiciona um ouvinte de evento de timeupdate para cada v�deo
    videos.forEach(function(video, index) {
        video.addEventListener("timeupdate", function() {
            var value = (video.currentTime / video.duration) * 100;
            progressBars[index].value = value;
        });
    });
</script>

</body>
</html>
