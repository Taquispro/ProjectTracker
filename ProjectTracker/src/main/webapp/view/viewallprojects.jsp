<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>All Projects</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="home">Project Tracker</a>
        <div class="ms-auto">
            <a href="addproject" class="btn btn-success">Add Project</a>
        </div>
    </div>
</nav>

<div class="container mt-4">
    <h2 class="text-center mb-4">All Projects</h2>

    <div class="row">
        <c:forEach var="project" items="${projects}">
            <div class="col-md-4 mb-4">
                <div class="card shadow-sm h-100">
                    <div class="card-body d-flex flex-column">

                        <h5 class="card-title">${project.projectName}</h5>
                        <p class="card-text">${project.description}</p>

                        <!-- STATUS BADGE -->
                        <c:choose>
                            <c:when test="${project.status == 'Planned'}">
                                <span class="badge bg-secondary mb-2">Planned</span>
                            </c:when>
                            <c:when test="${project.status == 'In Progress'}">
                                <span class="badge bg-warning text-dark mb-2">In Progress</span>
                            </c:when>
                            <c:when test="${project.status == 'Completed'}">
                                <span class="badge bg-success mb-2">Completed</span>
                            </c:when>
                            <c:otherwise>
                                <span class="badge bg-info mb-2">${project.status}</span>
                            </c:otherwise>
                        </c:choose>

                        <p>
                            <strong>Tech:</strong> ${project.techStack}
                        </p>

                        <!-- BUTTONS -->
                        <div class="mt-auto d-flex justify-content-between">
                            <a href="editproject?id=${project.id}" class="btn btn-outline-primary btn-sm">
                                Edit
                            </a>

                            <a href="deleteproject?id=${project.id}"
                               class="btn btn-outline-danger btn-sm"
                               onclick="return confirm('Are you sure you want to delete this project?');">
                                Delete
                            </a>
                        </div>

                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

</body>
</html>
