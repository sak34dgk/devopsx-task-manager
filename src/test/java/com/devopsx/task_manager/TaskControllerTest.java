package com.devopsx.task_manager;

import com.devopsx.task_manager.controller.TaskController;
import org.junit.jupiter.api.Test;

import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;

class TaskControllerTest {

    @Test
    void getTasksShouldReturnTasks() {

        TaskController controller = new TaskController();

        List<?> tasks = controller.getTasks();

        assertEquals(4, tasks.size());
    }
}