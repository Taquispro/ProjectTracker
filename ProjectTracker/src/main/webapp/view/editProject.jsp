<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Project</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2 class="text-center mb-4">Edit Project</h2>

    <form action="saveeditproject" method="post" class="card p-4 shadow">
        <input type="hidden" name="id" value="${project.id}">


        <div class="mb-3">
            <label class="form-label">Project Name</label>
            <input type="text" name="projectName" class="form-control" value = ${project.projectName} required>
        </div>

        <div class="mb-3">
            <label class="form-label">Description</label>
            <textarea name="description" class="form-control" rows="3" }>${project.description}</textarea>
        </div>

        <div class="mb-3">
            <label class="form-label">Status</label>
            <select name="status" class="form-select" >
                <option value="Planned"
                ${project.status == 'Planned' ? 'selected' : ''}>
                    Planned
                </option>

                <option value="In Progress"
                ${project.status == 'In Progress' ? 'selected' : ''}>
                    In Progress
                </option>

                <option value="Completed"
                ${project.status == 'Completed' ? 'selected' : ''}>
                    Completed
                </option>
            </select>
        </div>

        <div class="mb-3">
            <label class="form-label">Tech Stack</label>
            <input type="text" name="techStack" class="form-control"
                   placeholder="Java, Spring Boot, MySQL"  value = ${project.techStack}>
        </div>

        <div class="text-center">
            <button class="btn btn-primary">Save Project</button>
            <a href="viewprojects" class="btn btn-secondary">Cancel</a>
        </div>

    </form>
</div>

</body>
</html>
