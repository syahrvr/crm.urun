<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 font-weight-bold text-gray-800"><?php echo $title; ?></h1>
    <p class="mb-4">Anda bisa mengatur data diri anda disini.</p>

    <!-- Content Row -->
    <div class="row">
        <div class="col-xl-8 col-lg-7">

            <!-- Area Chart -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Showing Your <?php echo $title; ?></h6>
                </div>
                <?php echo $this->session->userdata('message'); ?>
                <div class="card-body">
                    <form class="user" method="post" enctype="multipart/form-data" action="<?php echo base_url() . 'profile'; ?>">
                        <div class="form-group row">
                            <div class="col-sm-6 mb-3 mb-sm-0">
                                <small class="text-primary font-weight-bold">Current Password</small>
                                <input type="password" class="form-control form-control-user" name="current_password" placeholder="Current Password">
                                <?php echo form_error('current_password', '<small class="text-danger pl-3">', '</small>'); ?>
                            </div>
                            <div class="col-sm-6">
                                <small class="text-primary font-weight-bold">New Password</small>
                                <input type="password" class="form-control form-control-user" name="new_password" placeholder="Retype Password">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-6 mb-3 mb-sm-0">
                                <small class="text-primary font-weight-bold">Phone</small>
                                <input type="text" class="form-control form-control-user" name="phone" placeholder="Phone" value="<?php echo $user['phone']; ?>">
                                <?php echo form_error('phone', '<small class="text-danger pl-3">', '</small>'); ?>
                            </div>
                            <div class="col-sm-6">
                                <div class="col-sm-6 mt-3">
                                    <small class="text-primary font-weight-bold"></small>
                                    <button type="submit" class="btn btn-primary btn-user btn-block">Save Setting</button>
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-6 mb-3 mb-sm-0">
                                <small class="text-primary font-weight-bold">Profile Picture</small>
                                <input type="file" name="photo" value="<?php echo $user['photo']; ?>">
                                <small class="text-warning"><i class="fas fa-exclamation-triangle fa-fw"></i> File maximum 2MB</small> <br>
                                <?php if (isset($error)) {
                                    echo $error;
                                } ?>
                            </div>
                            <div class="col-sm-6 mt-3">
                                <small class="text-primary font-weight-bold"></small>
                                <button type="submit" class="btn btn-primary btn-user btn-block">Save Setting</button>
                            </div>
                        </div>
                    </form>
                    <hr>
                    <small style="font-style: italic;">
                        “Tiga hal yang membawa pada jurang kebinasaan: (1) tamak lagi kikir, (2) mengikuti hawa nafsu (yang selalu mengajak pada kejelekan), dan ujub (takjub pada diri sendiri).” (HR. Abdur Rozaq 11: 304. Syaikh Al Albani mengatakan bahwa hadits ini hasan. Lihat Shahihul Jaami’ 3039).
                    </small>
                </div>
            </div>
        </div>
    </div>