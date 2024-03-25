<?php 
$bg = DB::table('heading')->where('halaman','AWS')->orderBy('id_heading','DESC')->first();
?>
<!--Inner Header End--> 
<!--About Start-->
<section class="wf100 about">
   <!--About Txt Video Start-->
   <div class="about-video-section wf100">
      <div class="container">
         <div class="row">
            <!-- Menggunakan col-lg-12 untuk membuat gambar memenuhi lebar penuh pada layar besar -->
            <div class="col-lg-12">
               <!-- Ganti kata sambutan rektor dengan judul Struktur BPM dan tampilkan gambar yang sesuai -->
               <center><h2>Struktur BPM</h2></center>
               <div style="text-align: center;">
                  <a href="#"><img src="{{ asset('assets/upload/image/struktur.png') }}" alt="Struktur BPM" class="img-fluid"></a>
               </div>
            </div>
         </div>
      </div>
   </div>
<div class="clearfix"><br><br></div>
