 <!-- Header-->
 <header class="bg-wihet  py-5" style="background-color: #007bff !important;">
    <!-- <div class="container h-100 d-flex align-items-end justify-content-center w-100">
        <div class="text-center text-white w-100">
            <h1 class="display-4 fw-bolder"><?php echo $_settings->info('name') ?></h1>
            <p class="lead fw-normal text-white-50 mb-0">نحن سنعتني بسيارتك</p>
            <div class="col-auto mt-2">
                <button class="btn btn-primary btn-lg rounded-0" id="send_request" type="button">ارسال طلب الخدمة</button>
            </div>
        </div>
    </div> -->
</header>
<!-- Section-->
 <section class="py-5">
    <div class="container px-4 px-lg-5 mt-5">
        <div class="row">
            <div class="col-md-12">
                <h3 class="text-center">الخدمات المتوفرة</h3>
                <hr class="bg-primary opacity-100">
                <div class="form-group">
                <div class="input-group mb-3">
                    <div class="input-group-append">
                        <span class="input-group-text bg-primary" id="basic-addon2"><i class="fa fa-search"></i></span>
                    </div>
                    <input type="search" id="search" class="form-control" placeholder="........ ابحث هنا" aria-label="Search Service Here" aria-describedby="basic-addon2" style=" text-align: right;">
                </div>
                </div>
                <div class="row gx-4 gx-lg-5 row-cols-1 row-cols-sm-1 row-cols-md-2 row-cols-xl-2" id="service_list">
                    <?php 
                    $services = $conn->query("SELECT * FROM `service_list` where status = 1 and delete_flag = 0 order by `service`");
                    while($row= $services->fetch_assoc()):
                        $row['description'] = strip_tags(html_entity_decode(stripslashes($row['description'])));
                    ?>
                    <a class="col item text-decoration-none text-dark view_service" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>">
                        <div class="callout callout-primary border-primary rounded-0" style="width: 550px; height: 380px;">
                            <dl>
                            <div class="col px-1 py-2 text-decoration-none text-dark product-item"><div class="img-top position-relative product-img-holder"> <img src="<?php echo $row['image_path'] ?>" alt="serv Image <?= isset($name) ? $name : "" ?>" class="img-thumbnail product-img" style="width: 560px; height: 240px;"></div></div>
                                <dt><?php echo $row['service'] ?></dt>
                                        <div class="position-absolute bottom-1 right-1" style="bottom:.5em;right:.5em">
                                            <span class="badge badge-light bg-gradient-light border text-dark px-4 rounded-pill" style="border: 1px solid #007bff !important;">10% خصم يصل الى </span>
                                        </div>
                            </dl>
                        </div>
                    </a>
                    <?php endwhile; ?>
                </div>
                <div id="noResult" style="display:none" class="text-center"><b>!!!لا نتائج</b></div>
            </div>
        </div>
    </div>
</section> 

<!-- <section class="py-3">

    <div class="container ">
		
		<div class="row mt-n3 justify-content-center  text-right">
            <div class="col-lg-15 col-md-15 col-sm-15 col-sm-11">
                <div class="card card-outline rounded-0">
                    <div class="card-body">
                        <div class="row row-cols-xl-4 row-md-6 col-sm-12 col-xs-12 gy-2 gx-2" id="service_list">
                            <?php 
                            $services = $conn->query("SELECT * FROM `service_list` where status = 1 and delete_flag = 0 order by `service`");
                            while($row= $services->fetch_assoc()):
                            $row['description'] = strip_tags(html_entity_decode(stripslashes($row['description'])));
                            ?>
                            <div class="col">
                                <a class="card rounded-0 shadow product-item text-decoration-none text-reset" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>">
                                    <div class="position-relative">
                                        <div class="img-top position-relative product-img-holder">
                                        <img src="<?php echo $row['image_path'] ?>" alt="serv Image <?= isset($name) ? $name : "" ?>" class="product-img">
                                        </div>
                                        <div class="position-absolute bottom-1 right-1" style="bottom:.5em;right:.5em">
                                            <span class="badge badge-light bg-gradient-light border text-dark px-4 rounded-pill">10%</span>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div style="line-height:1em">
                                            <div class="card-title w-100 mb-0"><?php echo $row['service'] ?></div>
                                            <div class="card-description w-100"><small class="text-muted"><?php echo $row['description'] ?></small></div>
                                            <div class="card-description w-100"><small class="text-muted"></small></div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <?php endwhile; ?>
                        </div>
                    </div>
                </div>
            </div>
		</div>
	</div>

</section> -->
<script>

    $(function(){
        $('#search').on('input',function(){
            var _search = $(this).val().toLowerCase().trim()
            $('#service_list .item').each(function(){
                var _text = $(this).text().toLowerCase().trim()
                    _text = _text.replace(/\s+/g,' ')
                    console.log(_text)
                if((_text).includes(_search) == true){
                    $(this).toggle(true)
                }else{
                    $(this).toggle(false)
                }
            })
            if( $('#service_list .item:visible').length > 0){
                $('#noResult').hide('slow')
            }else{
                $('#noResult').show('slow')
            }
        })
        $('#service_list .item').hover(function(){
            $(this).find('.callout').addClass('shadow')
        })
        $('#service_list .view_service').click(function(){
            uni_modal("معلومات الخدمة","view_service.php?id="+$(this).attr('data-id'),'mid-large')
        })
        $('#send_request').click(function(){
            if("<?= $_settings->userdata('id') > 0 && $_settings->userdata('login_type') == 2 ?>" == 1)
            uni_modal("Fill the Service Request Form","send_request.php",'mid-large');
            else
            alert_toast(" الرجاء تسجيل الدخول أولا.","warning");
        })

    })
    $(document).scroll(function() { 
        $('#topNavBar').removeClass('bg-transparent navbar-dark bg-primary')
        if($(window).scrollTop() === 0) {
           $('#topNavBar').addClass('navbar-dark bg-transparent')
        }else{
           $('#topNavBar').addClass('navbar-dark bg-primary')
        }
    });
    $(function(){
        $(document).trigger('scroll')
    })
</script>