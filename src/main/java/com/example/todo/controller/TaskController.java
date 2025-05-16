package com.example.todo.controller;

import com.example.todo.entity.Task;
import com.example.todo.repository.TaskRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class TaskController {

    @Autowired
    private TaskRepository taskRepository;

    @GetMapping("/")
    public String listTasks(Model model) {
        model.addAttribute("tasks", taskRepository.findAll());
        return "task-list";
    }

    @GetMapping("/task/new")
    public String showForm(Model model) {
        model.addAttribute("task", new Task());
        return "task-form";
    }

    @GetMapping("/task/edit/{id}")
    public String editForm(@PathVariable Long id, Model model) {
        model.addAttribute("task", taskRepository.findById(id).orElse(null));
        return "task-form";
    }

    @PostMapping("/task/save")
    public String saveTask(@ModelAttribute Task task) {
        taskRepository.save(task);
        return "redirect:/";
    }

    @GetMapping("/task/delete/{id}")
    public String deleteTask(@PathVariable Long id) {
        taskRepository.deleteById(id);
        return "redirect:/";
    }
}
