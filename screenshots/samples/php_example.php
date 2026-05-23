<?php
/**
 * Modern PHP showing namespaces, typed parameters, and class structures.
 */

namespace App\Services;

interface LoggerInterface {
    public function log(string $message): void;
}

class ConsoleLogger implements LoggerInterface {
    public function log(string $message): void {
        echo sprintf("[%s] LOG: %s\n", date('Y-m-d H:i:s'), $message);
    }
}

class UserService {
    private LoggerInterface $logger;
    private array $users = [];

    public function __construct(LoggerInterface $logger) {
        $this->logger = $logger;
    }

    public function registerUser(string $username, string $email): bool {
        if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $this->users[] = [
                'username' => $username,
                'email' => $email,
                'status' => 'active'
            ];
            $this->logger->log("Registered user: $username");
            return true;
        }
        $this->logger->log("Invalid email provided: $email");
        return false;
    }
}

// Execution
$logger = new ConsoleLogger();
$service = new UserService($logger);
$service->registerUser("coder_npp", "notepad@example.com");
