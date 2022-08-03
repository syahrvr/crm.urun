<!-- Bootstrap modal -->
<div class="modal fade" id="modal_form" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title">Submit Task</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body form">
                <form action="#" id="form" class="form-horizontal">
                    <input type="hidden" value="" name="id" />
                    <div class="form-body">
                        <div class="form-group">
                            <label class="control-label col-md-3">Task Name</label>
                            <div class="col-md-9">
                                <input name="name" placeholder="Task Name" class="form-control" type="text" autofocus>
                                <small class="help-block"></small>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Description</label>
                            <div class="col-md-9">
                                <textarea rows="3" name="description" placeholder="  Description" class="form-control"></textarea>
                                <small class="help-block"></small>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button id="btnSave" onclick="save()" class="btn btn-primary btn-icon-split">
                    <span class="icon text-white-50">
                        <i class="fas fa-save"></i>
                    </span>
                    <span class="text">Save</span>
                </button>
                <button data-dismiss="modal" class="btn btn-danger btn-icon-split">
                    <span class="icon text-white-50">
                        <i class="fas fa-ban"></i>
                    </span>
                    <span class="text">Cancel</span>
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- End Bootstrap modal -->


<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 font-weight-bold text-gray-800" style="text-align: right;">
        <span style="float: left;"><?php echo $title; ?></span>
        <button class="btn btn-success btn-circle" onclick="add_task()" title="Add Task">
            <span class="icon text-white-50">
                <i class="fa fa-plus"></i>
            </span>
        </button>
        <button class="btn btn-light btn-circle" onclick="reload_table()">
            <span class="icon text-gray-600">
                <i class="fa fa-refresh"></i>
            </span>
        </button>
    </h1>
    <p class="mb-4">Ini adalah modul task, di modul ini task akan diproses hingga bagian approval.</p>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Showing All Your Task</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table id="table" class="table table-striped table-bordered" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th>Task Name</th>
                            <th>Description</th>
                            <th>Status</th>
                            <th>Date Created</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
    </div>