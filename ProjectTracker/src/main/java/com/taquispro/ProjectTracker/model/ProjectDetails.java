package com.taquispro.ProjectTracker.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

@Data    //getter and setters
@NoArgsConstructor //Default Constructor
@AllArgsConstructor  //All possible argumentric constructor
@Component
public class ProjectDetails {
    private int id;
    private String projectName;
    private String description;
    private String status;
    private String techStack;
}
