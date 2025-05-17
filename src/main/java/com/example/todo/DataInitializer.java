package com.example.todo;

import com.example.todo.entity.Task;
import com.example.todo.repository.TaskRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Component
public class DataInitializer implements CommandLineRunner {

    private final TaskRepository taskRepository;

    public DataInitializer(TaskRepository taskRepository) {
        this.taskRepository = taskRepository;
    }

    @Override
    public void run(String... args) throws Exception {
        if (taskRepository.count() == 0) { // Chỉ khởi tạo khi chưa có dữ liệu
            Task task1 = new Task();
            task1.setTitle("Học Spring Boot");
            task1.setDescription("Tìm hiểu cách xây dựng ứng dụng web với Spring Boot");
            task1.setCompleted(false);

            Task task2 = new Task();
            task2.setTitle("Viết báo cáo");
            task2.setDescription("Hoàn thành báo cáo tuần");
            task2.setCompleted(false);

            Task task3 = new Task();
            task3.setTitle("Đi siêu thị");
            task3.setDescription("Mua thức ăn cho tuần tới");
            task3.setCompleted(true);

            taskRepository.save(task1);
            taskRepository.save(task2);
            taskRepository.save(task3);

            System.out.println("Đã khởi tạo dữ liệu mẫu cho Task");
        }
    }
}
