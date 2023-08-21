<!-- Start categories product section -->
<section class="product__section product__categories--section section--padding">
    <div class="container">
        <div class="section__heading text-center mb-40">
            <span class="section__heading--subtitle">Recently added our store</span>
            <h2 class="section__heading--maintitle">Our Categories</h2>
        </div>
        <div class="product__section--inner product__swiper--activation swiper">
            <div class="swiper-wrapper">
            @foreach($pro_categories as $data)
                <div class="swiper-slide">
                    <div class="product__items product__bg" style="border-radius: 6px;">
                        <div class="product__items--thumbnail">
                            <a class="product__items--link" href="{{asset('category/'.$data->slug)}}">
                                <img class="product__items--img bg-light" src="{{Hpx::image_src('assets/img/category/'.$data->image,'assets/img/category/dummy.png')}}" title="{{$data->name}}" alt="{{$data->name}}" style="width: 60%;border-radius: 50%;margin: auto;margin-top: 20px;">
                                <div class="product__categories--content d-flex justify-content-between align-items-center">
                                    <div class="product__categories--content__left">
                                        <h3 class="product__categories--content__maintitle">{{$data->name}}</h3>
                                        <span class="product__categories--content__subtitle">Shop Now</span>
                                    </div>
                                    <div class="product__categories--icon">
                                        <span class="product__categories--icon__link">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="15.995" height="10.979" viewBox="0 0 15.995 10.979">
                                                <path  d="M212.706,299.839a.425.425,0,0,0,0-.6l-3.458-3.458a.425.425,0,0,1,0-.6l1.008-1.008a.425.425,0,0,1,.6,0l5.065,5.065a.425.425,0,0,1,0,.6l-5.065,5.066a.425.425,0,0,1-.6,0l-1.008-1.008a.425.425,0,0,1,0-.6Zm-6.305-.3a2.215,2.215,0,1,0,2.216-2.216A2.215,2.215,0,0,0,206.4,299.541Zm-3.634,0a1.6,1.6,0,1,0,1.6-1.605A1.6,1.6,0,0,0,202.767,299.541Zm-2.717,0a1.154,1.154,0,1,0,1.154-1.154A1.155,1.155,0,0,0,200.05,299.541Z" transform="translate(-200.05 -294.05)" fill="currentColor"/>
                                            </svg>
                                        </span>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>                      
            @endforeach
            </div>
            <div class="swiper__nav--btn swiper-button-next"></div>
            <div class="swiper__nav--btn swiper-button-prev"></div>
        </div>
    </div>
    <div class="container text-end mt-2">
        <a href="#" class="btnx-outline fs-4">View All <i class="icofont-arrow-right"></i></a>
    </div>
</section>

<!-- End categories product section -->