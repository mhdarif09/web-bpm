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
          <!--Quality Policy Start-->
<section class="wf100 quality-policy-section">
   <div class="container">
      <div class="row">
         <div class="col-lg-12">
            <div class="quality-policy">
               <h3 class="text-center mb-4">Kebijakan Sistem Penjaminan Mutu</h3>
               <div class="row justify-content-center">
                  <div class="col-md-10">
                     <div class="media mb-4">
                        <i class="fas fa-handshake fa-2x mr-3 align-self-center"></i>
                        <div class="media-body">
                           <h5 class="mt-0">Penerapan Sistem Penjaminan Mutu</h5>
                           <p class="text-justify">Internal (SPMI) dan Sistem Penjaminan Mutu Eksternal (SPME) merupakan bagian integral dari upaya kami dalam meningkatkan mutu secara berkelanjutan.</p>
                        </div>
                     </div>
                     <div class="media mb-4">
                        <i class="fas fa-tasks fa-2x mr-3 align-self-center"></i>
                        <div class="media-body">
                           <h5 class="mt-0">Kami Bertanggung Jawab</h5>
                           <p class="text-justify">dalam mencapai tujuan yang dipercayakan oleh pemangku kepentingan kami, termasuk dalam meningkatkan mutu penyelenggaraan Tri Dharma Perguruan Tinggi.</p>
                        </div>
                     </div>
                     <div class="media mb-4">
                        <i class="fas fa-chart-line fa-2x mr-3 align-self-center"></i>
                        <div class="media-body">
                           <h5 class="mt-0">Lingkup Sistem Penjaminan Mutu</h5>
                           <p class="text-justify">meliputi bidang akademik dan non-akademik, dengan fokus pada penjaminan proses dan luaran dari setiap aspek Tri Dharma Perguruan Tinggi.</p>
                        </div>
                     </div>
                     <div class="media mb-4">
                        <i class="fas fa-cogs fa-2x mr-3 align-self-center"></i>
                        <div class="media-body">
                           <h5 class="mt-0">Kami Menerapkan Perencanaan</h5>
                           <p class="text-justify">penerapan, pengendalian, dan pengembangan standar mutu internal secara konsisten dan berkelanjutan.</p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>
<!--Quality Policy End-->

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

<!--P.R.I.D.E Start-->
<section class="wf100 pride-section">
   <div class="container">
      <div class="row">
         <div class="col-lg-12">
            <div class="pride">
               <h3 class="text-center mb-4">Siklus & Budaya Kerja</h3>
               <div class="row justify-content-center">
                  <div class="col-md-10">
                     <div class="media mb-4 align-items-center">
                        <div class="rounded-circle bg-primary text-white mr-3" style="width: 50px; height: 50px; display: flex; justify-content: center; align-items: center;">
                           <span>P</span>
                        </div>
                        <div class="media-body">
                           <h5 class="mt-0">PERSISTENT</h5>
                           <p class="text-justify">Seluruh sivitas akademika Universitas Bina Darma harus gigih dalam bekerja.</p>
                        </div>
                     </div>
                     <div class="media mb-4 align-items-center">
                        <div class="rounded-circle bg-primary text-white mr-3" style="width: 50px; height: 50px; display: flex; justify-content: center; align-items: center;">
                           <span>R</span>
                        </div>
                        <div class="media-body">
                           <h5 class="mt-0">RESPONSIVE</h5>
                           <p class="text-justify">Seluruh sivitas akademika Universitas Bina Darma harus responsif dan mengerjakan seluruh pekerjaan dengan waktu dan target yang telah ditetapkan.</p>
                        </div>
                     </div>
                     <div class="media mb-4 align-items-center">
                        <div class="rounded-circle bg-primary text-white mr-3" style="width: 50px; height: 50px; display: flex; justify-content: center; align-items: center;">
                           <span>I</span>
                        </div>
                        <div class="media-body">
                           <h5 class="mt-0">INNOVATIVE</h5>
                           <p class="text-justify">Seluruh sivitas akademika Universitas Bina Darma harus memberikan inovasi terbaik dalam bekerja.</p>
                        </div>
                     </div>
                     <div class="media mb-4 align-items-center">
                        <div class="rounded-circle bg-primary text-white mr-3" style="width: 50px; height: 50px; display: flex; justify-content: center; align-items: center;">
                           <span>D</span>
                        </div>
                        <div class="media-body">
                           <h5 class="mt-0">DISCIPLINE</h5>
                           <p class="text-justify">Seluruh sivitas akademika Universitas Bina Darma harus disiplin dalam bekerja dan tepat waktu hadir di kampus dan kelas.</p>
                        </div>
                     </div>
                     <div class="media mb-4 align-items-center">
                        <div class="rounded-circle bg-primary text-white mr-3" style="width: 50px; height: 50px; display: flex; justify-content: center; align-items: center;">
                           <span>E</span>
                        </div>
                        <div class="media-body">
                           <h5 class="mt-0">EFFICIENT AND EFFECTIVE</h5>
                           <p class="text-justify">Seluruh sivitas akademika Universitas Bina Darma harus bekerja dengan baik dan berprestasi dengan luar biasa.</p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>
<!--P.R.I.D.E End-->