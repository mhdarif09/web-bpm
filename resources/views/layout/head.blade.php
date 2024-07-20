<?php 
$site_config = DB::table('konfigurasi')->first();
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>{{ $title ?? '' }}</title>
<meta name="description" content="{{ $deskripsi ?? '' }}">
<meta name="keywords" content="{{ $keywords }}">
<meta name="author" content="{{ $site_config->namaweb }}">
<!-- icon -->
<link rel="shortcut icon" href="{{ asset('assets/upload/image/'.$site_config->icon) }}">
<!-- Font Awesome -->
<link rel="stylesheet" href="{{ asset('assets/admin/plugins/fontawesome-free/css/all.min.css') }}">
<!-- CSS FILES START -->
<link href="{{ asset('assets/aws/css/custom.css') }}" rel="stylesheet">
<link href="{{ asset('assets/aws/css/color.css') }}" rel="stylesheet">
<link href="{{ asset('assets/aws/css/responsive.css') }}" rel="stylesheet">
<link href="{{ asset('assets/aws/css/owl.carousel.min.css') }}" rel="stylesheet">
<link href="{{ asset('assets/aws/css/bootstrap.min.css') }}" rel="stylesheet">
<link href="{{ asset('assets/aws/css/prettyPhoto.css') }}" rel="stylesheet">
<link href="{{ asset('assets/aws/css/all.min.css') }}" rel="stylesheet">
<?php echo $site_config->metatext ?>
</head>
<style>

.pride-container {
    background-color: white;
    padding: 20px 0;
}
.flip-card {
    background-color: transparent;
    perspective: 1000px;
    margin: 10px;
    display: flex;
    justify-content: center;
}
.flip-card-inner {
    position: relative;
    width: 100px; /* Fixed width to fit the letter */
    height: 100px; /* Fixed height to fit the letter */
    text-align: center;
    transition: transform 0.6s;
    transform-style: preserve-3d;
}
.flip-card:hover .flip-card-inner {
    transform: rotateY(180deg);
}
.flip-card-front,
.flip-card-back {
    position: absolute;
    width: 100%;
    height: 100%;
    backface-visibility: hidden;
    border-radius: 5px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 3rem;
    color: white;
}
.flip-card-front {
    background-color: purple;
}
.flip-card-back {
    background-color: blue;
    transform: rotateY(180deg);
}

legend {
    float: left;
    width: 100%;
    padding: 0;
    margin-bottom: 0.5rem;
    font-size: calc(1.275rem + 0.3vw);
    line-height: inherit;
}

</style>
<body>