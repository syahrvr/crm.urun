<div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

        <div class="col-xl-10 col-lg-12 col-md-9">

            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                        <div class="col-lg-6">
                            <div class="p-5">
                                <!-- Login Form -->
                                <form class="user" method="post" action="<?php echo base_url() . 'login/validate'; ?>">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                                    </div>
                                    <?php echo $this->session->userdata('message'); ?>
                                    <div class="form-group">
                                        <input type="username" class="form-control form-control-user" placeholder="Username" name="username" value="<?php echo set_value('username'); ?>" autofocus>
                                        <?php echo form_error('username', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-user" placeholder="Password" name="password">
                                        <?php echo form_error('password', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                    <button type="submit" class="btn btn-primary btn-user btn-block">Login</button>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="javascript:;">Forgot Password?</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small signup" href="<?php echo base_url() . 'register'; ?>">Create an Account!</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

</div>