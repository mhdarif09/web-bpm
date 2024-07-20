

<!--Slider Start-->
<section id="home-slider" class="owl-carousel owl-theme wf100">
   <?php foreach($slider as $slider) { ?>
       <div class="item">
           <div class="slider-caption h3slider">
               <div class="container">
                   <?php if($slider->status_text == "Ya") { ?>
                       <strong>{{ strip_tags($slider->isi) }}</strong>
                       <h1>{{ $slider->judul_galeri }}</h1>
                       <a href="{{ $slider->website }}">Baca detail</a>
                   <?php } ?>
               </div>
           </div>
           <img src="{{ asset('assets/upload/image/'.$slider->gambar) }}" alt=""> 
       </div>
   <?php } ?>
</section>
<!--Slider End--> 
<section class="pride-container">
   <div class="container">
     <div class="row justify-content-center">
       <div class="col-auto">
         <div class="flip-card">
           <div class="flip-card-inner">
             <div class="flip-card-front">
               P
             </div>
             <div class="flip-card-back">
               P
             </div>
           </div>
         </div>
       </div>
       <div class="col-auto">
         <div class="flip-card">
           <div class="flip-card-inner">
             <div class="flip-card-front">
               R
             </div>
             <div class="flip-card-back">
               R
             </div>
           </div>
         </div>
       </div>
       <div class="col-auto">
         <div class="flip-card">
           <div class="flip-card-inner">
             <div class="flip-card-front">
               I
             </div>
             <div class="flip-card-back">
               I
             </div>
           </div>
         </div>
       </div>
       <div class="col-auto">
         <div class="flip-card">
           <div class="flip-card-inner">
             <div class="flip-card-front">
               D
             </div>
             <div class="flip-card-back">
               D
             </div>
           </div>
         </div>
       </div>
       <div class="col-auto">
         <div class="flip-card">
           <div class="flip-card-inner">
             <div class="flip-card-front">
               E
             </div>
             <div class="flip-card-back">
               E
             </div>
           </div>
         </div>
       </div>
     </div>
   </div>
</section>
<!--About Section Start-->
<section class="wf100 about">
   <!--About Txt Video Start-->
   <div class="about-video-section wf100">
       <div class="container">
           <div class="row">
               <div class="col-lg-7">
                   <div class="about-text">
                       <h5>TENTANG KAMI</h5>
                       <h2>{{ $site_config->nama_singkat }}</h2>
                       <?php echo $site_config->tentang ?>
                   </div>
               </div>
               <div class="col-lg-5">
                   <a href="#"><img src="{{ asset('assets/upload/image/'.$site_config->gambar) }}" alt="{{ $site_config->nama_singkat }}" class="img img-fluid img-thumbnail"></a>
               </div>
           </div>
       </div>
   </div>
</section>
<!--About Section End-->

<!--Prodi Section Start-->
<section class="donation-join wf100">
   <div class="container text-center">
       <div class="row">
           <div class="col-md-12">
               <div class="section-title-2 text-center">
                   <h1>UKM & ORGANISASI</h1>
               </div>
               <div class="row">
                   <?php foreach($layanan as $layanan) { ?>
                       <div class="col-md-3 col-sm-10">
                           <br>
                           <img src="{{ asset('assets/upload/image/thumbs/'.$layanan->gambar) }}" alt="{{ $layanan->judul_berita }}" class="img img-thumbnail img-fluid">
                           <div class="volbox">
                               <h6>{{ $layanan->judul_berita }}</h6>
                               <p>{{ $layanan->keywords }}</p>
                           </div>
                       </div>
                   <?php } ?>
               </div>
               <!-- Row end -->
           </div>
       </div>
   </div>
</section>
<!--Prodi Section End-->


 <!--Blog Start-->
 <section class="h2-news wf100 p100 blog">
   <div class="blog-grid">
      <div class="container">
         <div class="row">
            <div class="col-md-5">
               <div class="section-title-2">
                  <h5>Baca update kami</h5>
                  <h2>Berita & Updates</h2>
               </div>
            </div>
            <div class="col-md-6"> <a href="{{ asset('berita') }}" class="view-more">Lihat berita lainnya</a> </div>
            <div class="col-md-12">
               <hr>
            </div>
         </div>
         <div class="row" style="background-color: white; padding-top: 20px; padding-bottom: 20px; border-radius: 5px;">
            <?php foreach($berita as $berita) { ?>
            <!--Blog Small Post Start-->
            <div class="col-md-4 col-sm-6" >
               <div class="blog-post">
                  <div class="blog-thumb"> <a href="{{ asset('berita/read/'.$berita->slug_berita) }}"><i class="fas fa-link"></i></a> <img src="{{ asset('assets/upload/image/thumbs/'.$berita->gambar) }}" alt="><?php  echo $berita->judul_berita ?>"> </div>
                  <div class="post-txt">
                     <h5><a href="{{ asset('berita/read/'.$berita->slug_berita) }}"><?php  echo $berita->judul_berita ?></a></h5>
                     <ul class="post-meta">
                        <li> <a href="{{ asset('berita/read/'.$berita->slug_berita) }}"><i class="fas fa-calendar-alt"></i> {{ tanggal('tanggal_id',$berita->tanggal_post)}}</a> </li>
                        <li> <a href="{{ asset('berita/kategori/'.$berita->slug_berita) }}"><i class="fas fa-sitemap"></i> {{ $berita->nama_kategori }}</a> </li>
                     </ul>
                     <p><?php echo \Illuminate\Support\Str::limit(strip_tags($berita->isi), 100, $end='...') ?></p>
                     <a href="{{ asset('berita/read/'.$berita->slug_berita) }}" class="read-post">Baca detail</a>
                  </div>
               </div>
            </div>
            <!--Blog Small Post End--> 
            <?php } ?>
         </div>
         
      </div>
   </div>
</section>
<!--Blog End--> 
<!--Webinar Section Start-->
<section class="home2-about wf100 p100 gallery">
   <div class="container">
       <div class="row">
           <div class="col-md-5">
               <div class="video-img">
                   <a href="https://youtu.be/{{ $video->video }}" data-rel="prettyPhoto" title="{{ $video->judul }}"><i class="fas fa-play"></i></a>
                   <img src="{{ asset('assets/upload/image/'.$video->gambar) }}" alt="">
               </div>
           </div>
           <div class="col-md-7">
               <div class="h2-about-txt">
                   <h3>Webinar</h3>
                   <h2>{{ $video->judul }}</h2>
                   <p><?php echo strip_tags($video->keterangan) ?></p>
                   <a class="aboutus" href="#">Lihat Detail</a>
               </div>
           </div>
       </div>
   </div>
</section>
<!--Webinar Section End-->

<!--Testimonials Start-->
<section class="testimonials-section bg-white wf100 p80">
   <div class="container">
       <div class="row">
           <div class="col-md-12">
               <div class="section-title-2 text-center">
                   <h2>Download</h2>
               </div>
               <div id="testimonials" class="owl-carousel owl-theme">
                   <?php 
                   $kategori_download = DB::table('kategori_download')->orderBy('kategori_download.urutan', 'ASC')->get();
                   foreach($kategori_download as $kategori_download) {
                   ?>
                   <div class="item">
                       <h4><?php echo $kategori_download->nama_kategori_download ?></h4>
                       <hr>
                       <?php echo \Illuminate\Support\Str::limit(strip_tags($kategori_download->keterangan), 100, $end='...') ?>
                       <div class="tuser">
                           <a href="{{ asset('download/kategori/'.$kategori_download->slug_kategori_download) }}" class="btn btn-primary"><i class="fa fa-laptop"></i> Lihat Detail</a>
                       </div>
                   </div>
                   <?php } ?>
               </div>
           </div>
       </div>
   </div>
</section>
<!--Testimonials End-->

<!--Video Profile Section Start-->
<section class="home2-about wf100 p100 gallery" style="background: url({{ asset('assets/aws/images/news-artilcesbg.jpg') }}) no-repeat; background-size: cover;">
   <div class="container">
       <div class="row">
           <div class="col-md-5">
               <div class="video-img">
                   <a href="https://youtu.be/{{ $video->video }}" data-rel="prettyPhoto" title="{{ $video->judul }}"><i class="fas fa-play"></i></a>
                   <img src="{{ asset('assets/upload/image/'.$video->gambar) }}" alt="">
               </div>
           </div>
           <div class="col-md-7">
               <div class="h2-about-txt">
                   <h3>Video Profile Badan Penjamin Mutu Bina Darma</h3>
                   <h2>{{ $video->judul }}</h2>
                   <a class="aboutus" href="#">Lihat Detail</a>
               </div>
           </div>
       </div>
   </div>
</section>
<!--Video Profile Section End-->
