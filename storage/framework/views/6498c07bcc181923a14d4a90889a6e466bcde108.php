   
   <!-- footer Section start -->
    <footer class="footer_area">
      <div class="footer-top">
        <div class="container">
          <div class="footer-wrapper">
            <div class="row">
              <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="footer-item">
                  <div class="footer-about">
                    <h5 class="footer-title">About Us</h5>
                    <img class="footer-logo" src="./assets/images/logo.png" alt="">
                    <p><?php echo e($setting ? $setting->about_des : ''); ?></p>
                      
                    <div class="social_icon">
                        <a href="<?php echo e($setting ? $setting->fb_link : '#'); ?>" target="blank"><i class="fab fa-facebook-f"></i></a>
                        <a href="<?php echo e($setting ? $setting->linkedin_link : '#'); ?>" target="blank"><i class="fab fa-linkedin-in"></i></a>
                        <a href="<?php echo e($setting ? $setting->instagram_link : '#'); ?>" target="blank"> <i class="fab fa-instagram"></i></a>
                        <a href="<?php echo e($setting ? $setting->twitter_link : '#'); ?>" target="blank"> <i class="fab fa-twitter"></i></a>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="footer-item">
                <div class="services">
                  <h5 class="footer-title">Important Links</h5>
                  <ul class="list-unstyled">
                    <li><a href="./my-account">My Account</a></li>
                    <li><a href="<?php echo e(route('refund-policy')); ?>">Refund Policy</a></li>
                    <li><a href="<?php echo e(route('privacy-policy')); ?>">Privacy Policy</a></li>
                    <li><a href="<?php echo e(route('terms-service')); ?>">Terms of Service</a></li>
                    <li><a href="<?php echo e(route('disclaimer')); ?>">Disclaimer</a></li>
                    <li><a href="<?php echo e(route('faq')); ?>">FAQ</a></li>
                  </ul>
                </div>
                </div>
              </div>
              <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="footer-item">
                  <h5 class="footer-title">Contact US</h5>
                  <div class="contact">
                    <ul>
                        <li>
                            <i class="fas fa-home"></i>
                            <?php echo e($setting ? $setting->address : ''); ?>

                        </li>
                        <li>
                            <i class="fas fa-phone-alt"></i>
                            <?php echo e($setting ? $setting->phone : ''); ?>

                        </li>
                        <li>
                            <i class="fas fa-envelope"></i>
                            <?php echo e($setting ? $setting->email : ''); ?>


                        </li>
                    </ul>
                </div>
                </div>
              </div>
              <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="footer-item">
                  <img class="guarantee-image" src="./assets/images/home-page/100-satisfaction-guarantee-100-satisfaction-guarantee-badge-11562919018kscvvotyt9-removebg-preview.png" alt="">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="footer-bottom">
        <div class="container">
          <div class="footer-bottom-item">
          <div class="row d-flex align-items-center">
            <div class="col-lg-6 col-md-12 col-sm-12">
              <span class="copyright-text">Copyright © 2021
                  <a href="" target="_blank">Antara</a>. All rights reserved.
                </span>
            </div>
            <div class="col-lg-6 col-md-12 col-sm-12">
              <div class="currency-image">
                <img src="./assets/images/home-page/pay.png" alt="">
              </div>
            </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
  <!-- footer Section end --><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/frontend/include/footer.blade.php ENDPATH**/ ?>