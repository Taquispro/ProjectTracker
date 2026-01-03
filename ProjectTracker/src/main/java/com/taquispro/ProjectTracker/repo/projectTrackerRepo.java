package com.taquispro.ProjectTracker.repo;

import com.taquispro.ProjectTracker.model.ProjectDetails;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
@Repository
public class projectTrackerRepo {

    private List<ProjectDetails> projects = new ArrayList<>(Arrays.asList(new ProjectDetails(1234,"E commerce","Microservice","Planned","SpringBoot, Postgres")));

    public List<ProjectDetails> getProjects() {
        return projects;
    }

    public void addProjects(ProjectDetails project) {
        this.projects.add(project);
    }
    public void deleteProject(int id){
        projects.removeIf(project -> project.getId() == id);

    }
    public ProjectDetails editProjectPage(int id){
        return projects.stream()
                .filter(project -> project.getId() == id)
                .findFirst()
                .orElse(null);
    }
    public ProjectDetails updateProject(ProjectDetails updatedProject) {

        ProjectDetails existing = editProjectPage(updatedProject.getId());


        if (existing != null) {

            if (!existing.getProjectName().equals(updatedProject.getProjectName())) {
                existing.setProjectName(updatedProject.getProjectName());
            }

            if (!existing.getDescription().equals(updatedProject.getDescription())) {
                existing.setDescription(updatedProject.getDescription());
            }

            if (!existing.getStatus().equals(updatedProject.getStatus())) {
                existing.setStatus(updatedProject.getStatus());
            }

            if (!existing.getTechStack().equals(updatedProject.getTechStack())) {
                existing.setTechStack(updatedProject.getTechStack());
            }

        }
        return existing;
    }

}
