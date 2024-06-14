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
               <!-- Ganti kata sambutan rektor dengan judul Struktur BPM dan tampilkan tautan ke file PDF yang sesuai -->
               <center><h2>Kebijakan BPM</h2></center>
               <div style="text-align: center;">
                  <!-- Menggunakan tag embed untuk menampilkan file PDF -->
                  <embed src="{{ asset('assets/upload/pdf/kebijakan_bpm.pdf') }}" type="application/pdf" width="100%" height="600px">
               </div>
            </div>
         </div>
      </div>
   </div>
<div class="clearfix"><br><br></div>
