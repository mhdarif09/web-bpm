<!--Slider Start-->
         <section id="home-slider" class="owl-carousel owl-theme wf100">
            <?php foreach($slider as $slider) { ?>
            <div class="item">
               <div class="slider-caption h3slider">
                  <div class="container">
                     <?php if($slider->status_text=="Ya") { ?>
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
         <!--Service Area End--> 
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
                        <a href="#"><img src="{{ asset('assets/upload/image/'.$site_config->gambar) }}" alt="{{ $site_config->nama_singkat }}" class="img img-fluid img-thumbnail">
                     </div>
                  </div>
               </div>
            </div>
            <!--About Txt Video End--> 
            <!--About Section Start-->
         <section class="home2-about wf100 p100 gallery">
            <div class="container">
               <div class="row">
                  <div class="col-md-5">
                        <div class="video-img"> <a href="https://youtu.be/{{ $video->video }}" data-rel="prettyPhoto" title="{{ $video->judul }}"><i class="fas fa-play"></i></a> <img src="{{ asset('assets/upload/image/'.$video->gambar) }}" alt=""> </div>
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
         <!--About Section End--> 
         
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
               $kategori_download = DB::table('kategori_download')
                    ->orderBy('kategori_download.urutan','ASC')
                    ->get();
               foreach($kategori_download as $kategori_download) {
               ?>
               <!--testimonials box start-->
               <div class="item">
                  <h4><?php echo $kategori_download->nama_kategori_download ?></h4>
                  <hr>
                  <?php echo \Illuminate\Support\Str::limit(strip_tags($kategori_download->keterangan), 100, $end='...') ?>
                  <div class="tuser">
                     <a href="{{ asset('download/kategori/'.$kategori_download->slug_kategori_download) }}" class="btn btn-primary"><i class="fa fa-laptop"></i> Lihat Detail</a>
                  </div>
               </div>
               <!--testimonials box End--> 
               <?php } ?>
            </div>
         </div>
      </div>
   </div>

</section>
<section class="home2-about wf100 p100 gallery" style="background: url({{ asset('assets/aws/images/news-artilcesbg.jpg') }}) no-repeat; background-size: cover;">
   <div class="container">
      <div class="row">
         <div class="col-md-5">
               <div class="video-img"> <a href="https://youtu.be/{{ $video->video }}" data-rel="prettyPhoto" title="{{ $video->judul }}"><i class="fas fa-play"></i></a> <img src="{{ asset('assets/upload/image/'.$video->gambar) }}" alt=""> </div>
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
<!--Testimonials End--> 