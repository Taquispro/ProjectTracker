package com.taquispro.ProjectTracker;

import com.taquispro.ProjectTracker.model.ProjectDetails;
import com.taquispro.ProjectTracker.service.projectTrackerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Random;

@Controller
public class ProjectTrackerController {
    @Autowired
    private projectTrackerService service;

    @GetMapping({"/","/home"})
    public String home(){
        return "home";
    }

    @GetMapping("viewprojects")
    public String viewAllProjects(Model m){
        List<ProjectDetails> projects = service.getProjects();
        System.out.println(projects);
        m.addAttribute("projects",projects);

        return "viewallprojects";
    }

    @GetMapping("addproject")
    public String addProjects(){
        return "addproject";
    }

    @PostMapping("saveproject")
    public String saveProject(ProjectDetails project, Model m){
        project.setId( 1000000 + new Random().nextInt(9000000));
        service.addProject(project);
        m.addAttribute("project",project);
        return "projectdetail";
    }
    @GetMapping("/deleteproject")
    public String deleteProject(@RequestParam int id) {

        service.deleteProject(id);

        return "redirect:/viewprojects";
    }

    @GetMapping("/editproject")
    public String editProject(@RequestParam int id,Model m) {
        m.addAttribute("project", service.editProjectPage(id));

        return "editProject";
    }

    @PostMapping("saveeditproject")
    public String saveEditProject(ProjectDetails project,Model m){

         m.addAttribute("project",service.updateProject(project));
         return "projectdetail";
    }





}
