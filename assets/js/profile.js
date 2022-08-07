function fileValidation() {
    var fileInput =
        document.getElementById('file');

    var filePath = fileInput.value;

    // Allowing file type
    var allowedExtensions =
        /(\.jpg|\.jpeg|\.png|\.gif)$/i;

    if (!allowedExtensions.exec(filePath)) {
        swal('Failed!', 'Error uploading profile picture, only .jpg / .jpeg / .gif / .png file type allowed!', 'error');
        //alert('Invalid file type');
        fileInput.value = '';
        return false;
    } if (fileInput.files.length > 0) {
        for (const i = 0; i <= fileInput.files.length - 1; i++) {
            const fsize = fileInput.files.item(i).size;
            const file = Math.round((fsize / 1024));
            // The size of the file.
            if (file >= 2048) {
                swal('Error!', 'File too Big, please select a file less than 2MB!', 'error');
                fileInput.value = '';
                return false;
            }
            else {
                // Image preview
                if (fileInput.files && fileInput.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        document.getElementById(
                            'imagePreview').innerHTML =
                            '<img src="' + e.target.result +
                            '"/>';
                    };
                    reader.readAsDataURL(fileInput.files[0]);
                }
            }
        }
    }
}