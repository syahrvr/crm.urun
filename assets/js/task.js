var save_method; //for save method string
var table;

$(document).ready(function () {

    //datatables
    table = $('#table').DataTable({

        "processing": true, //Feature control the processing indicator.
        "serverSide": true, //Feature control DataTables' server-side processing mode.
        "order": [], //Initial no order.

        // Load data for the table's content from an Ajax source
        "ajax": {
            "url": "task/ajax_list",
            "type": "POST"
        },

        //Set column definition initialisation properties.
        "columnDefs": [{
            "targets": [-1], //last column
            "orderable": false, //set not orderable
        },],

    });

    //set input/textarea/select event when change value, remove class error and remove text help block 
    $("input").change(function () {
        $(this).parent().parent().removeClass('has-error');
        $(this).next().empty();
    });
    $("textarea").change(function () {
        $(this).parent().parent().removeClass('has-error');
        $(this).next().empty();
    });
    $("select").change(function () {
        $(this).parent().parent().removeClass('has-error');
        $(this).next().empty();
    });

});

function add_task() {
    save_method = 'add';
    $('#form')[0].reset(); // reset form on modals
    $('.form-group').removeClass('has-error'); // clear error class
    $('.help-block').empty(); // clear error string
    $('#modal_form').modal('show'); // show bootstrap modal
    $('.modal-title').text('Submit Your Task'); // Set Title to Bootstrap modal title
}

function edit_task(id) {
    save_method = 'update';
    $('#form')[0].reset(); // reset form on modals
    $('.form-group').removeClass('has-error'); // clear error class
    $('.help-block').empty(); // clear error string

    //Ajax Load data from ajax
    $.ajax({
        url: "task/ajax_edit/" + id,
        type: "GET",
        dataType: "JSON",
        success: function (data) {

            $('[name="id"]').val(data.id);
            $('[name="name"]').val(data.name);
            $('[name="description"]').val(data.description);
            $('[name="flag"]').val(data.flag);
            $('#modal_form').modal('show'); // show bootstrap modal when complete loaded
            $('.modal-title').text('Edit Your Task'); // Set title to Bootstrap modal title

        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert('Error get data from ajax');
        }
    });
}

function reload_table() {
    table.ajax.reload(null, false); //reload datatable ajax 
}

function save() {
    //$('#btnSave').text('saving...'); //change button text
    //$('#btnSave').attr('disabled', true); //set button disable 
    var url;

    if (save_method == 'add') {
        url = "task/ajax_add";
    } else {
        url = "task/ajax_update";
    }

    // ajax adding data to database
    $.ajax({
        url: url,
        type: "POST",
        data: $('#form').serialize(),
        dataType: "JSON",
        success: function (data) {

            if (data.status) //if success close modal and reload ajax table
            {
                $('#modal_form').modal('hide');
                reload_table();
            } else {
                for (var i = 0; i < data.inputerror.length; i++) {
                    $('[name="' + data.inputerror[i] + '"]').parent().parent().addClass('has-error'); //select parent twice to select div form-group class and add has-error class
                    $('[name="' + data.inputerror[i] + '"]').next().text(data.error_string[i]); //select span help-block class set text error string
                }
            }
            //$('#btnSave').text('save'); //change button text
            //$('#btnSave').attr('disabled', false); //set button enable 

        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert('Error adding / update data');
            //$('#btnSave').text('save'); //change button text
            //$('#btnSave').attr('disabled', false); //set button enable 

        }
    });
}

function delete_task(id) {
    if (confirm('Are you sure want to delete this data?')) {
        // ajax delete data to database
        $.ajax({
            url: "task/ajax_delete/" + id,
            type: "POST",
            dataType: "JSON",
            success: function (data) {
                //if success reload ajax table
                $('[name="id"]').val(data.id);
                $('[name="flag"]').val(0);
                $('#modal_form').modal('hide');
                reload_table();

            },
            error: function (jqXHR, textStatus, errorThrown) {
                alert('Error deleting data');
            }
        });

    }
}