function addToCart()
{
        let quantity = $('input[name="quantity"]').val();
        let user_id = $('#user_id').val();


    if(!user_id){
        Swal.fire({
            icon: 'error',
            title: 'Lỗi!',
            text: 'Vui lòng đăng nhập để thêm sản phẩm vào giỏ hàng!',
            confirmButtonText: 'Đăng nhập',
            showCancelButton: true,
            cancelButtonText: 'Đóng',
            cancelButtonColor: '#d33',
        }).then((result) => {
            if (result.isConfirmed) {
                window.location.href = '/dang-nhap?redirect=' + window.location.href;
            }
        })

        return;
    }

    let productId = $('#product_id').val();

    $.ajax({
        url: '/add-to-cart',
        method: 'POST',
        data: {
            quantity: quantity,
            productId: productId
        },
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
        },
        success: function (response) {
            if(response.status =='success'){
                Swal.fire({
                    icon: 'success',
                    title: 'Thành công!',
                    text: 'Thêm sản phẩm vào giỏ hàng thành công!',
                    showConfirmButton: false,
                    timer: 1500
                }).then(() => {
                    window.location.reload();
                })
            }
        },
        error: function (error) {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: error.responseJSON.message,
            })
        }
    })


}
