package com.taquispro.ProjectTracker.service;

import com.taquispro.ProjectTracker.model.ProjectDetails;
import com.taquispro.ProjectTracker.repo.projectTrackerRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class projectTrackerService {
    @Autowired
    private projectTrackerRepo repo;

    public List<ProjectDetails> getProjects(){
        return  repo.getProjects();
    }

    public void addProject(ProjectDetails project){
        repo.addProjects(project);
    }

    public void deleteProject(int id){
        repo.deleteProject(id);
    }
    public ProjectDetails editProjectPage(int id){
        return repo.editProjectPage(id);
    }
    public ProjectDetails updateProject(ProjectDetails project){
       return repo.updateProject(project);
    }

}
