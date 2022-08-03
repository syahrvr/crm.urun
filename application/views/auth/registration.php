<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
                <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                <div class="col-lg-7">
                    <div class="p-5">
                        <div class="text-center">
                            <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
                        </div>
                        <form class="user" method="post" action="<?php echo base_url() . 'auth/registration'; ?>">
                            <div class="form-group row">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <input type="text" class="form-control form-control-user" name="firstname" placeholder="First Name" value="<?php echo set_value('firstname'); ?>">
                                    <?php echo form_error('firstname', '<small class="text-danger pl-3">', '</small>'); ?>
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control form-control-user" name="lastname" placeholder="Last Name" value="<?php echo set_value('lastname'); ?>">
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control form-control-user" name="username" placeholder="Username" value="<?php echo set_value('username'); ?>">
                                <?php echo form_error('username', '<small class="text-danger pl-3">', '</small>'); ?>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-6 col-sm-6 mb-3 mb-sm-0">
                                    <input type="password" class="form-control form-control-user" name="password1" placeholder="Password">
                                    <?php echo form_error('password1', '<small class="text-danger pl-3">', '</small>'); ?>
                                </div>
                                <div class="col-sm-6">
                                    <input type="password" class="form-control form-control-user" name="password2" placeholder="Retype Password">
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control form-control-user" name="email" placeholder="Email" value="<?php echo set_value('email'); ?>">
                                <?php echo form_error('email', '<small class="text-danger pl-3">', '</small>'); ?>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <input type="text" class="form-control form-control-user" name="phone" placeholder="Phone" value="<?php echo set_value('phone'); ?>">
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group form-control-select">
                                        <select class="form-control" name="privilege" value="<?php echo set_value('privilege'); ?>">
                                            <option selected>Select Role User</option>
                                            <option value="1">Admin</option>
                                            <option value="2">Approval</option>
                                            <option value="3">Checker</option>
                                            <option value="4">Maker</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary btn-user btn-block">Register Account</button>
                        </form>
                        <hr>
                        <div class="text-center">
                            <a class="small" href="javascript:;">Forgot Password?</a>
                        </div>
                        <div class="text-center">
                            <a class="small" href="<?php echo base_url(); ?>">Already have an account? Login!</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>