class ApiService {

    constructor() {
        $.ajaxSetup({
            headers: {
                "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
            },
        });
    }


    setFormData(url, form) {
        return Promise.resolve(
            $.ajax({
                url: url,
                method: "POST",
                data: new FormData(form),
                contentType: false,
                processData: false,
                cache: false,
            })
        );
    }
    setData(url, data) {
        return Promise.resolve(
            $.ajax({
                url: url,
                method: "POST",
                data: JSON.stringify(data),
                dataType: "json",
                contentType: "application/json;",
            })
        );
    }
    // getData(url, data) {
    //     return Promise.resolve(
    //         $.ajax({
    //             url: url,
    //             method: "GET",
    //             data: JSON.stringify(data),

    //         })
    //     );
    // }
    getData(url) {
        return Promise.resolve(
            $.ajax({
                url: url,
                type: "GET",

            })
        );
    }








}
