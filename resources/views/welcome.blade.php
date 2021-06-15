@extends('layouts.frontend.partial.app')
@section('title','Home')
@push('css')
@endpush
@section('content')
    @include('layouts.frontend.partial.slider')

    <section class="features-area bg-image ptb-100">
        <div class="container">
            <div class="section-title">
				<span>
					<span>ট্রাস্ট ইনোভেশন লিমিটেড বৈশিষ্ট্য</span>
				</span>
                <h2>আমরা ঢাকা সেনানিবাসের একমাত্র ইন্টারনেট সেবা প্রদানকারী সংস্থা</h2>
            </div>
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="single-features-box">
                        <div class="icon">
                            <i class="flaticon-speedometer"></i>
                        </div>
                        <h3>সর্বোচ্চ ডাউনলোড সুবিধা</h3>
                        <p>আমাদের কাছে পাবেন আনলিমিটেড ডাউনলোড সুবিধা । ডাউনলোড হবে এখন আরও দ্রুতগতি ।এখনই যোগ দিন ক্যানন্টনমেণ্ট এর
                            ইন্টারনেট ফ্যামিলি Trust Innovation Limited-তে এবং উপভোগ করুন সর্বোচ্চ গতির আনলিমিটেড ইন্টারনেট সেবা এবং
                            প্রিমিয়াম সার্ভিস।</p>
                        <div class="back-icon">
                            <i class="flaticon-speedometer"></i>
                        </div>
                        <a href="{{route('pricing')}}" class="details-btn"><i class="flaticon-arrow-pointing-to-right"></i></a>
                        <div class="image-box">
                            <img src="{{asset('assets/frontend/img/shape-image/2.png')}}" alt="image">
                            <img src="{{asset('assets/frontend/img/shape-image/2.png')}}" alt="image">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 offset-lg-0 offset-md-3 offset-sm-3">
                    <div class="single-features-box">
                        <div class="icon">
                            <i class="flaticon-support"></i>
                        </div>
                        <h3>বিল-পে</h3>
                        <p>এখন ঘরে বসে খুব সহজেই Trust Innovation Limited- এর বিল পে করতে পারবেন আপনার পছন্দের পেমেন্ট অপশন এর মাধ্যমে।তাই
                            আর নয় বিল পে নিয়ে চিন্তা,ইন্টারনেট এখন চলতে থাকবে বাঁধাহীনভাবে। এছাড়া আরও পাচ্ছেন ফেসবুক, ইউটিউব এবং
                            বিডিআইএক্সের জন্য অতিরিক্ত ব্যান্ডউইথ। </p>
                        <div class="back-icon">
                            <i class="flaticon-support"></i>
                        </div>
                        <a href="{{route('pricing')}}" class="details-btn"><i class="flaticon-arrow-pointing-to-right"></i></a>
                        <div class="image-box">
                            <img src="{{asset('assets/frontend/img/shape-image/2.png')}}" alt="image">
                            <img src="{{asset('assets/frontend/img/shape-image/2.png')}}" alt="image">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="single-features-box">
                        <div class="icon">
                            <i class="flaticon-speedometer-1"></i>
                        </div>
                        <h3>১০০% ইন্টারনেট আপটাইম</h3>
                        <p>নিরবচ্ছিন্ন ইন্টারনেট সেবা একমাত্র আমরাই দিয়ে থাকি ।আপনার ইন্টারনেট এক্সপেরিয়েন্সকে করে তুলুন আরো বেশি গতিশীল ও
                            প্রাণবন্ত।</p>
                        <div class="back-icon">
                            <i class="flaticon-speedometer-1"></i>
                        </div>
                        <a href="{{route('pricing')}}" class="details-btn"><i class="flaticon-arrow-pointing-to-right"></i></a>
                        <div class="image-box">
                            <img src="{{asset('assets/frontend/img/shape-image/2.png')}}" alt="image">
                            <img src="{{asset('assets/frontend/img/shape-image/2.png')}}" alt="image">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 offset-lg-0 offset-md-3 offset-sm-3">
                    <div class="single-features-box">
                        <div class="icon">
                            <i class="flaticon-support"></i>
                        </div>
                        <h3>২৪/৭ গ্রাহক পরিসেবা</h3>
                        <p>আমরা দিচ্ছি ২৪\৭ কল সেন্টার সুবিধা ।খুবই কম সময়ে সমস্যা সমাধানের জন্য পাবেন একঝাক অভিজ্ঞ ইঞ্জিনিয়ার এবং
                            টেকনিশিয়ান সাথে পাচ্ছেন সার্বক্ষণিক মনিটরিং সুবিধাসহ।</p>
                        <div class="back-icon">
                            <i class="flaticon-support"></i>
                        </div>
                        <a href="{{route('pricing')}}" class="details-btn"><i class="flaticon-arrow-pointing-to-right"></i></a>
                        <div class="image-box">
                            <img src="{{asset('assets/frontend/img/shape-image/2.png')}}" alt="image">
                            <img src="{{asset('assets/frontend/img/shape-image/2.png')}}" alt="image">
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </section>


    <section class="services-area bg-image ptb-100" style="background-image: url({{asset('assets/frontend/img/background/service.jpg')}})
        ;background-size: cover;background-repeat: no-repeat;background-position: center;">
        <div class="container">
            <div class="section-title">
				<span>
					<span>ট্রাস্ট ইনোভেশন লিমিটেড সেবা</span>
				</span>
            </div>
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="single-services-box">
                        <div class="icon">
                            <i class="flaticon-wifi-1"></i>
                        </div>
                        <h3>ওয়াইফাই</h3>
                        <p>আপনার যদি ইতিমধ্যে কোনও নিয়মিত কম্পিউটারের (যেমন এর নেটওয়ার্ক কার্ড) মাধ্যমে ইন্টারনেট সংযোগ থাকে তবে কীভাবে
                            আপনার অ্যাপার্টমেন্টে ওয়াই-ফাই তৈরি করবেন? এখানে আপনাকে একটি অতিরিক্ত ডিভাইস - একটি রাউটার কিনতে হবে। এটি এই
                            ছোট বাক্সটি উপলভ্য ইন্টারনেটকে বাতাসের মাধ্যমে বিতরণ করবে।</p>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="single-services-box">
                        <div class="icon">
                            <i class="flaticon-key"></i>
                        </div>
                        <h3>কর্পোরেট সংযোগ</h3>
                        <p>প্রতিটি ব্যবসায়ের কাস্টমাইজড ব্যান্ডউইথ সমাধান প্রয়োজন। আমরা কর্পোরেট সংযোগ স্থাপন এবং বজায় রাখতে বিশেষজ্ঞ।
                            আমরা সুপার-ফাস্ট, সুরক্ষিত, নিরবচ্ছিন্ন এবং দ্রুতগতির ইন্টারনেট সরবরাহ করি। আমাদের দ্রুতগতির ইন্টারনেট
                            ব্যবসায়িক যোগাযোগ, এইচডি অনলাইন স্ট্রিমিংয়ের জন্য সবচেয়ে উপযুক্ত।</p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="single-services-box">
                        <div class="icon">
                            <i class="flaticon-router"></i>
                        </div>
                        <h3>হোম ইন্টারনেট</h3>
                        <p>বিল্ডিং পর্যন্ত পাচ্ছেন সরাসরি ফাইবার সংযোগ । খুবই কম লসে পাচ্ছেন বাসাবাড়িতে ইন্টারনেট সুবিধা।আমরা সুপার-ফাস্ট,
                            সুরক্ষিত, নিরবচ্ছিন্ন এবং দ্রুতগতির ইন্টারনেট সরবরাহ করি।</p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="single-services-box">
                        <div class="icon">
                            <i class="flaticon-shield"></i>
                        </div>
                        <h3>সিসিটিভি ক্যামেরা সেটআপ</h3>
                        <p>এখন অনেক বাড়ি, অফিস বা ভবনে এমন সতর্কবার্তা টাঙানো। কেউ কোনো দুষ্কর্ম করার আগে একবার অন্তত ভেবে দেখে যে তাঁর
                            কার্যক্রম নজরদারি করা হচ্ছে। সে কারণেই সিসিটিভি। আর আমরা দিচ্ছি সর্বোত্তম সিসিটিভি সুবিধা।</p>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="pricing-area ptb-100 extra-mb pb-0">
        <div class="container">
            <div class="section-title">
				<span>
					<span>ইন্টারনেট প্যাকেজ</span>
				</span>
                <h2>আপনার পছন্দের প্যাকেজটি বেছে নিন</h2>
            </div>
            <div class="row justify-content-center">
                <button class="col-lg-6 col-md-12 btn btn-primary" id="cantolment_show">সেনানিবাস এবং সামরিক ব্যক্তিবর্গ</button>
                <button class="col-lg-6 col-md-12 btn btn-primary" id="civil_show">পোস্ট অফিস এলাকা (বেসামরিক)</button>
            </div>

            <br>
            <br>


            <div id="cantolment" style="display: none">
                <div class="row">
                    @foreach($package as $data)
                        @if($data->id < 26)
                            @if($data->code == 'default')

                            @else
                                <div class="col-lg-4 col-md-6 col-sm-6">
                                    <div class="single-pricing-table">
                                        <div class="pricing-header">
                                            <div class="icon">
                                                <i class="flaticon-wifi"></i>
                                            </div>
                                            <h3>{{$data->name}}</h3>
                                        </div>
                                        <ul class="pricing-features-list">
                                            <li><i class="flaticon-check-mark"></i>{{$data->name}} প্যাকেজ</li>
                                            <li><i class="flaticon-check-mark"></i>{{$data->days}} দিন</li>
                                            <li><i class="flaticon-check-mark"></i>{{$data->code}}</li>
                                            <li><i class="flaticon-check-mark"></i>{{$data->price}} টাকা</li>
                                            <li><i class="flaticon-check-mark"></i>{{$data->mb_unit_value}} স্পিড</li>
                                        </ul>
                                        <div class="price">
                                            <span>থেকে</span>
                                            <span>৳</span>
                                            {{$data->price}}
                                            <span>/{{$data->days}} দিন</span>
                                        </div>
                                        <a href="{{route('check_out',$data->id)}}" class="view-plans-btn">বাছাই করুন</a>
                                        <div class="image-box">
                                            <img src="{{asset('assets/frontend/img/shape-image/2.png')}}" alt="image">
                                            <img src="{{asset('assets/frontend/img/shape-image/2.png')}}" alt="image">
                                        </div>
                                    </div>
                                </div>
                            @endif
                        @endif
                    @endforeach
                </div>
            </div>

            <div id="civil" style="display: none">
                <div class="row">
                    @foreach($package as $data)
                        @if($data->id > 26)
                            @if($data->code == 'default')

                            @else
                                <div class="col-lg-4 col-md-6 col-sm-6">
                                    <div class="single-pricing-table">
                                        <div class="pricing-header">
                                            <div class="icon">
                                                <i class="flaticon-wifi"></i>
                                            </div>
                                            <h3>{{$data->name}}</h3>
                                        </div>
                                        <ul class="pricing-features-list">
                                            <li><i class="flaticon-check-mark"></i>{{$data->name}} প্যাকেজ</li>
                                            <li><i class="flaticon-check-mark"></i>{{$data->days}} দিন</li>
                                            <li><i class="flaticon-check-mark"></i>{{$data->code}}</li>
                                            <li><i class="flaticon-check-mark"></i>{{$data->price}} টাকা</li>
                                            <li><i class="flaticon-check-mark"></i>{{$data->mb_unit_value}} স্পিড</li>
                                        </ul>
                                        <div class="price">
                                            <span>থেকে</span>
                                            <span>৳</span>
                                            {{$data->price}}
                                            <span>/{{$data->days}} দিন</span>
                                        </div>
                                        <a href="{{route('check_out',$data->id)}}" class="view-plans-btn">বাছাই করুন</a>
                                        <div class="image-box">
                                            <img src="{{asset('assets/frontend/img/shape-image/2.png')}}" alt="image">
                                            <img src="{{asset('assets/frontend/img/shape-image/2.png')}}" alt="image">
                                        </div>
                                    </div>
                                </div>
                            @endif
                        @endif
                    @endforeach
                </div>
            </div>



        </div>
    </section>


    <section class="faq-area bg-image ptb-100 extra-pt">
        <div class="container">
            <div class="section-title">
				<span>
					<span>প্রয়োজনীয় প্রশ্ন</span>
				</span>
            </div>
            <div class="row">
                <div class="col-lg-6 col-md-12">
                    <div class="faq-accordion">
                        <ul class="accordion">
                            <li class="accordion-item">
                                <a class="accordion-title" href="javascript:void(0)"><i class="flaticon-add"></i>আমরা কেন সেরা ?</a>
                                <p class="accordion-content">ট্রাস্ট ইনোভেশন লিমিটেড এর রেসিডেন্সিয়াল ইন্টারনেট সার্ভিস থেকে পাচ্ছেন সবচেয়ে
                                    দ্রুতগতি ইন্টারনেটসেবা , বেস্ট ইন্টারনেট প্যাকেজ এবং ২৪/৭ গ্রাহক পরিসেবা।</p>
                            </li>
                            <li class="accordion-item">
                                <a class="accordion-title" href="javascript:void(0)"><i class="flaticon-add"></i>কেন টি আই এল কে বেছে নিবেন
                                    ?</a>
                                <p class="accordion-content">ট্রাস্ট ইনোভেশন লিমিটেড বেস্ট ইন্টারনেট পরিসেবা সরবরাহের মাধ্যমে সেনানিবাস
                                    অঞ্চলে একটি প্রধান ভূমিকা পালন করছে। নিরবচ্ছিন্ন ইন্টারনেট সেবা একমাত্র আমরাই দিয়ে থাকি . আমরা দিচ্ছি
                                    ২৪\৭ কল সেন্টার সুবিধা ।খুবই কম সময়ে সমস্যা সমাধানের জন্য পাবেন একঝাক অভিজ্ঞ ইঞ্জিনিয়ার এবং টেকনিশিয়ান
                                    সাথে পাচ্ছেন সার্বক্ষণিক মনিটরিং সুবিধাসহ। লাইফ সিম্পল করতে ট্রাস্ট ইনোভেশন এর সাথেই থাকুন।</p>
                            </li>
                            <li class="accordion-item">
                                <a class="accordion-title" href="javascript:void(0)"><i class="flaticon-add"></i>কিভাবে অনলাইন বিল পে করবেন
                                    ?</a>
                                <p class="accordion-content">এখন ঘরে বসে খুব সহজেই Trust Innovation Limited- এর মাধ্যমে বিল পে করতে পারবেন
                                    আপনার পছন্দের পেমেন্ট অপশন এর মাধ্যমে।</p>
                            </li>
                            <li class="accordion-item">
                                <a class="accordion-title" href="javascript:void(0)"><i class="flaticon-add"></i>রেসনেট এর হেল্পলাইন ?</a>
                                <p class="accordion-content">যে কোনো ধরনের নতুন সংযোগ, যে কোনো ধরনের তথ্য বা যে কোনো ধরনের সার্ভিস এর জন্য
                                    আমাদের যোগাযোগ করুন। আমরা দিচ্ছি ২৪\৭ কল সেন্টার সুবিধা ।</p>
                            </li>
                            <li class="accordion-item">
                                <a class="accordion-title" href="javascript:void(0)"><i class="flaticon-add"></i>ইন্টারনেট এ ধীরগতি পেলে কি
                                    করবেন ?</a>
                                <p class="accordion-content">আপনার যে কোনে ধরনের সমস্যার জন্য আামাদের সাথে যোগাযোগ করুন এবং কম সময়ে সমস্যা
                                    সমাধানের জন্য পাবেন একঝাক অভিজ্ঞ ইঞ্জিনিয়ার এবং টেকনিশিয়ান সাথে পাচ্ছেন সার্বক্ষণিক মনিটরিং সুবিধা।</p>
                            </li>

                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="faq-accordion">
                        <ul class="accordion">
                            <li class="accordion-item">
                                <a class="accordion-title" href="javascript:void(0)"><i class="flaticon-add"></i>আপনার ইন্টারনেটকে সুরক্ষিত
                                    রাখার উপায় ?</a>
                                <p class="accordion-content">ট্রাস্ট ইনোভেশন লিমিটেড এর রেসিডেন্সিয়াল ইন্টারনেট সার্ভিস থেকে পাচ্ছেন সবচেয়ে
                                    দ্রুতগতি ইন্টারনেটসেবা , বেস্ট ইন্টারনেট প্যাকেজ এবং ২৪/৭ গ্রাহক পরিসেবা।</p>
                            </li>
                            <li class="accordion-item">
                                <a class="accordion-title" href="javascript:void(0)"><i class="flaticon-add"></i>সর্বোত্তম ইন্টারনেট সেবা
                                    পাবার উপায় ?</a>
                                <p class="accordion-content">ট্রাস্ট ইনোভেশন লিমিটেড বেস্ট ইন্টারনেট পরিসেবা সরবরাহের মাধ্যমে সেনানিবাস
                                    অঞ্চলে একটি প্রধান ভূমিকা পালন করছে। নিরবচ্ছিন্ন ইন্টারনেট সেবা একমাত্র আমরাই দিয়ে থাকি . আমরা দিচ্ছি
                                    ২৪\৭ কল সেন্টার সুবিধা ।খুবই কম সময়ে সমস্যা সমাধানের জন্য পাবেন একঝাক অভিজ্ঞ ইঞ্জিনিয়ার এবং টেকনিশিয়ান
                                    সাথে পাচ্ছেন সার্বক্ষণিক মনিটরিং সুবিধাসহ। লাইফ সিম্পল করতে ট্রাস্ট ইনোভেশন এর সাথেই থাকুন।</p>
                            </li>
                            <li class="accordion-item">
                                <a class="accordion-title" href="javascript:void(0)"><i class="flaticon-add"></i>কিভাবে অভিযোগ করবেন?</a>
                                <p class="accordion-content">আপনার যে কোনো ধরনের সমস্যা বা অভিযোগ এর জন্য আমাদের যোগাযোগ মেনুতে ক্লিক করে
                                    অভিযোগ বক্সে আপনার অভিযোগটি রাখুন।</p>
                            </li>
                            <li class="accordion-item">
                                <a class="accordion-title" href="javascript:void(0)"><i class="flaticon-add"></i>
                                    আমাদের আসন্ন্য ফিচার সমূহ ?</a>
                                <p class="accordion-content">অনায়াসে ঝামেলাবিহীন ভাবে বিল পে করতে Trust Innovation Limited - এর মাধ্যমে
                                    আপনার পছন্দের পেমেন্ট অপশনটি বেছে নিন। লাইফ সিম্পল করতে ট্রাস্ট ইনোভেশন এর সাথেই থাকুন।</p>
                            </li>
                            <li class="accordion-item">
                                <a class="accordion-title" href="javascript:void(0)"><i class="flaticon-add"></i>টি আই এল -এর সম্মানিত
                                    পার্টনার? </a>
                                <p class="accordion-content">.</p>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>


    <section class="cta-area">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-8 col-md-12">
                    <div class="cta-content">
                        <h3>এখনই কল করুন নতুন সংযোগের জন্য</h3>
                        <a href="tel:tel:1234567890">০১৭৬৯০১৮৫৮৫</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="cta-btn">
                        <a href="{{route('contact_us')}}" class="btn btn-primary">যোগাযোগ করুন </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <br>


@endsection
@push('js')
    <script type="text/javascript">
        window.onload = function () {
            const audio = new Audio("{{asset('assets/frontend/audio/home.mp3')}}")
            audio.play();
        }

        function play_home_audio() {
            const audio = new Audio("{{asset('assets/frontend/audio/home.mp3')}}")
            audio.play();
        }

        $("#cantolment_show").click(function () {
            document.getElementById('cantolment').style.display = 'block';
            document.getElementById('civil').style.display = 'none';
        });
        $("#civil_show").click(function () {
            document.getElementById('civil').style.display = 'block';
            document.getElementById('cantolment').style.display = 'none';
        });
    </script>
@endpush
