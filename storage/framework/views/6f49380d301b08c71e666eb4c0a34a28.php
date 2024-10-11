<?php $__env->startSection('page-title'); ?>
    <?php echo e(__('Register')); ?>

<?php $__env->stopSection(); ?>
<?php
    $settings = Utility::settings();
    $logo = \App\Models\Utility::get_file('uploads/logo');
    $setting = \Modules\LandingPage\Entities\LandingPageSetting::settings();

?>
<?php $__env->startPush('custom-scripts'); ?>
    <?php if($settings['recaptcha_module'] == 'on'): ?>
        <?php echo NoCaptcha::renderJs(); ?>

    <?php endif; ?>
<?php $__env->stopPush(); ?>
<?php if($settings['cust_darklayout'] == 'on'): ?>
    <style>
        .g-recaptcha {
            filter: invert(1) hue-rotate(180deg) !important;
        }
    </style>
<?php endif; ?>
<?php
    $languages = App\Models\Utility::languages();
?>

<?php $__env->startSection('language-bar'); ?>
    <div class="lang-dropdown-only-desk">
        <li class="dropdown dash-h-item drp-language">
            <a class="dash-head-link dropdown-toggle btn" href="#" data-bs-toggle="dropdown" aria-expanded="false">
                <span class="drp-text"> <?php echo e($languages[$lang]); ?>

                </span>
            </a>
            <div class="dropdown-menu dash-h-dropdown dropdown-menu-end">
                <?php $__currentLoopData = $languages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $code => $language): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <a href="<?php echo e(route('register', [$ref, $code])); ?>" tabindex="0" class="dropdown-item ">
                        <span><?php echo e(Str::ucfirst($language)); ?></span>
                    </a>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
        </li>
    </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <div class="card-body">
        <div>
            <h2 class="mb-3 f-w-600"><?php echo e(__('Register')); ?></h2>
        </div>
        <form method="POST" action="<?php echo e(route('register')); ?>">
            <?php if(session('status')): ?>
                <div class="mb-4 font-medium text-lg text-green-600 text-danger">
                    <?php echo e(__('Email SMTP settings does not configured so please contact to your site admin.')); ?>

                </div>
            <?php endif; ?>
            <?php echo csrf_field(); ?>
            <div class="">
                <div class="form-group mb-3">
                    <label for="subdomain" class="form-label"><?php echo e(__('Name Access System')); ?></label>
                    <?php
                        $domain = $_SERVER['HTTP_HOST'];
                        $domain = preg_replace('/^www\./', '', $domain);
                    ?>
                    <div class="input-group subdomain-input-container">
                        <input id="subdomain" type="text" class="form-control <?php $__errorArgs = ['subdomain'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>"
                            name="subdomain" value="<?php echo e(old('subdomain')); ?>" required autocomplete="off" autofocus
                            placeholder="<?php echo e(__('Enter SubDomain')); ?>">
                        <span id="domain-suffix" class="input-group-text">.<?php echo e($domain); ?></span>
                    </div>
                    <div id="subdomain-feedback" class="feedback-text mt-1"></div>
                    <div id="subdomain-suggestions" class="mt-2"></div>
                    <?php $__errorArgs = ['subdomain'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                        <span class="invalid-feedback" role="alert">
                            <strong><?php echo e($message); ?></strong>
                        </span>
                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                </div>



                <div class="form-group mb-3">
                    <label for="name" class="form-label"><?php echo e(__('Name')); ?></label>
                    <input id="name" type="text" class="form-control <?php $__errorArgs = ['name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>"
                        name="name" value="<?php echo e(old('name')); ?>" required autocomplete="name" autofocus
                        placeholder="<?php echo e(__('Enter Name')); ?>">
                    <?php $__errorArgs = ['name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                        <span class="invalid-feedback" role="alert">
                            <strong><?php echo e($message); ?></strong>
                        </span>
                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                </div>
                <div class="form-group mb-3">
                    <label for="email" class="form-label"><?php echo e(__('Email')); ?></label>
                    <input class="form-control <?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="email" type="email"
                        name="email" value="<?php echo e(old('email')); ?>" required autocomplete="email" autofocus
                        placeholder="<?php echo e(__('Enter Email')); ?>">
                    <?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                        <span class="invalid-feedback" role="alert">
                            <strong><?php echo e($message); ?></strong>
                        </span>
                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                    <div class="invalid-feedback">
                        <?php echo e(__('Please fill in your email')); ?>

                    </div>
                </div>
                <div class="form-group mb-3">
                    <label for="password" class="form-label"><?php echo e(__('Password')); ?></label>
                    <input id="password" type="password" data-indicator="pwindicator"
                        class="form-control pwstrength <?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="password" required
                        autocomplete="new-password" placeholder="<?php echo e(__('Enter Password')); ?>">
                    <?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                        <span class="invalid-feedback" role="alert">
                            <strong><?php echo e($message); ?></strong>
                        </span>
                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                    <div id="pwindicator" class="pwindicator">
                        <div class="bar"></div>
                        <div class="label"></div>
                    </div>
                </div>
                <div class="form-group mb-3">
                    <label for="password_confirmation" class="form-label"><?php echo e(__('Password Confirmation')); ?></label>
                    <input id="password_confirmation" type="password" data-indicator="password_confirmation"
                        class="form-control pwstrength <?php $__errorArgs = ['password_confirmation'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>"
                        name="password_confirmation" required autocomplete="new-password"
                        placeholder="<?php echo e(__('Enter Confirm Password')); ?>">
                    <?php $__errorArgs = ['password_confirmation'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                        <span class="invalid-feedback" role="alert">
                            <strong><?php echo e($message); ?></strong>
                        </span>
                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                    <div id="password_confirmation" class="pwindicator">
                        <div class="bar"></div>
                        <div class="label"></div>
                    </div>
                </div>
                <div class="form-check custom-checkbox">
                    <input type="checkbox" class="form-check-input" id="termsCheckbox" name="terms" required>
                    <label class="form-check-label text-sm" for="termsCheckbox"><?php echo e(__('I agree to the ')); ?>

                        <?php if(is_array(json_decode($setting['menubar_page'])) || is_object(json_decode($setting['menubar_page']))): ?>
                            <?php $__currentLoopData = json_decode($setting['menubar_page']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php if(in_array($value->menubar_page_name, ['Terms and Conditions']) && isset($value->template_name)): ?>
                                    <a href="<?php echo e($value->template_name == 'page_content' ? route('custom.page', $value->page_slug) : $value->page_url); ?>"
                                        target="_blank"><?php echo e($value->menubar_page_name); ?></a>
                                <?php endif; ?>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            <?php echo e(__('and the ')); ?>

                            <?php $__currentLoopData = json_decode($setting['menubar_page']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php if(in_array($value->menubar_page_name, ['Privacy Policy']) && isset($value->template_name)): ?>
                                    <a href="<?php echo e($value->template_name == 'page_content' ? route('custom.page', $value->page_slug) : $value->page_url); ?>"
                                        target="_blank"><?php echo e($value->menubar_page_name); ?></a>
                                <?php endif; ?>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php endif; ?>
                    </label>
                </div>
                <?php if($settings['recaptcha_module'] == 'on'): ?>
                    <?php if(isset($settings['google_recaptcha_version']) && $settings['google_recaptcha_version'] == 'v2-checkbox'): ?>
                        <div class="form-group col-lg-12 col-md-12 mt-3">
                            <?php echo NoCaptcha::display(); ?>

                            <?php $__errorArgs = ['g-recaptcha-response'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                <span class="small text-danger" role="alert">
                                    <strong><?php echo e($message); ?></strong>
                                </span>
                            <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                        </div>
                    <?php else: ?>
                        <div class="form-group col-lg-12 col-md-12 mt-3">
                            <input type="hidden" id="g-recaptcha-response" name="g-recaptcha-response"
                                class="form-control">
                            <?php $__errorArgs = ['g-recaptcha-response'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                <span class="error small text-danger" role="alert">
                                    <strong><?php echo e($message); ?></strong>
                                </span>
                            <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                        </div>
                    <?php endif; ?>
                <?php endif; ?>

                <div class="d-grid">
                    <input type="hidden" name="ref_code" value="<?php echo e($ref); ?>">
                    <button type="submit" class="btn btn-primary btn-block mt-2"><?php echo e(__('Register')); ?></button>
                </div>

            </div>
            <p class="my-4 text-center"><?php echo e(__('Already have an account?')); ?> <a href="<?php echo e(route('login', $lang)); ?>"
                    class="text-primary"><?php echo e(__('Login')); ?></a></p>
        </form>

    </div>
<?php $__env->stopSection(); ?>
<?php if(isset($settings['recaptcha_module']) && $settings['recaptcha_module'] == 'on'): ?>
    <?php if(isset($settings['google_recaptcha_version']) && $settings['google_recaptcha_version'] == 'v2-checkbox'): ?>
        <?php echo NoCaptcha::renderJs(); ?>

    <?php else: ?>
        <script src="https://www.google.com/recaptcha/api.js?render=<?php echo e($settings['google_recaptcha_key']); ?>"></script>
        <script>
            $(document).ready(function() {
                grecaptcha.ready(function() {
                    grecaptcha.execute('<?php echo e($settings['google_recaptcha_key']); ?>', {
                        action: 'submit'
                    }).then(function(token) {
                        $('#g-recaptcha-response').val(token);
                    });
                });
            });
        </script>
    <?php endif; ?>
<?php endif; ?>

<?php echo $__env->make('layouts.auth', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\wwwLaragon\erpQuickBill\resources\views/auth/register.blade.php ENDPATH**/ ?>