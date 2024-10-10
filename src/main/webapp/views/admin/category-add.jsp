<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/commons/taglib.jsp"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<div class="container mt-5">
    <h2 class="mb-4">Insert Category</h2>
    <form action="<c:url value='/admin/category/insert'/>" method="post" enctype="multipart/form-data" class="needs-validation" novalidate>
        <div class="mb-3">
            <label for="categoryname" class="form-label">Category name:</label>
            <input type="text" class="form-control" id="categoryname" name="categoryname" placeholder="Enter category name" required>
            <div class="invalid-feedback">
                Please provide a category name.
            </div>
        </div>
        <div class="mb-3">
            <label for="image" class="form-label">Link Image:</label>
            <input type="text" class="form-control" id="image" name="image" placeholder="Enter image link">
        </div>
        <div class="mb-3">
            <label for="image1" class="form-label">Upload Image:</label>
            <input type="file" class="form-control" id="image1" name="image1">
        </div>
        <div class="mb-3">
            <label for="status" class="form-label">Status:</label><br>
            <div class="form-check form-check-inline">
                <input type="radio" class="form-check-input" id="statuson" name="status" value="1" required>
                <label class="form-check-label" for="statuson">Hoạt động</label>
            </div>
            <div class="form-check form-check-inline">
                <input type="radio" class="form-check-input" id="statusoff" name="status" value="0" required>
                <label class="form-check-label" for="statusoff">Không Hoạt động</label>
            </div>
            <div class="invalid-feedback">
                Please select a status.
            </div>
        </div>
        <hr>
        <button type="submit" class="btn btn-primary">Insert</button>
    </form>
</div>

<script>
    // Bootstrap validation for forms
    (function () {
        'use strict'
        var forms = document.querySelectorAll('.needs-validation')
        Array.prototype.slice.call(forms).forEach(function (form) {
            form.addEventListener('submit', function (event) {
                if (!form.checkValidity()) {
                    event.preventDefault()
                    event.stopPropagation()
                }
                form.classList.add('was-validated')
            }, false)
        })
    })()
</script>
