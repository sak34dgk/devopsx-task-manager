package com.devopsx.task_manager.controller;

import com.devopsx.task_manager.model.Task;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class TaskController {

    @GetMapping("/api/tasks")
    public List<Task> getTasks() {

        return List.of(
                new Task(1L, "Learn Docker", "IN_PROGRESS"),
                new Task(2L, "Build Jenkins Pipeline", "PENDING"),
                new Task(3L, "Deploy to Kubernetes", "PENDING"),
                new Task(4L, "Monitor Application Health", "PENDING")
        );
    }
}