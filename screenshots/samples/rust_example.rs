// Rust demonstration showcasing match, structs, impl, traits, and error handling.
use std::fmt;

#[derive(Debug)]
enum TaskState {
    Todo,
    InProgress,
    Done,
}

struct Task {
    id: u32,
    title: String,
    state: TaskState,
}

impl Task {
    fn new(id: u32, title: &str) -> Self {
        Task {
            id,
            title: title.to_string(),
            state: TaskState::Todo,
        }
    }

    fn update_state(&mut self, new_state: TaskState) {
        self.state = new_state;
    }
}

impl fmt::Display for Task {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "[Task {}] '{}' (State: {:?})", self.id, self.title, self.state)
    }
}

fn main() -> Result<(), String> {
    let mut task = Task::new(1, "Integrate Theme Styles");
    task.update_state(TaskState::InProgress);

    println!("{}", task);

    match task.state {
        TaskState::Done => println!("Task is finished!"),
        TaskState::InProgress | TaskState::Todo => {
            println!("Task is still pending action.");
        }
    }

    Ok(())
}
