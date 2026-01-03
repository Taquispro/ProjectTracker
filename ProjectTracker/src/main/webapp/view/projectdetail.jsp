<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Project Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <div class="card shadow p-4">
        <h3>${project.projectName}</h3>
        <p>${project.description}</p>

        <p><strong>Status:</strong> ${project.status}</p>
        <p><strong>Tech Stack:</strong> ${project.techStack}</p>
        <p>Project id: ${project.id}</p>

        <a href="viewprojects" class="btn btn-dark mt-3">Back</a>
    </div>
</div>

</body>
</html>
