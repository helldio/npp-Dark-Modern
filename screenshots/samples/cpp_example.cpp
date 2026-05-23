#include <iostream>
#include <vector>
#include <memory>
#include <string>

// A demonstration of Modern C++ (smart pointers, polymorphism, lambdas)
class Shape {
protected:
    std::string name;
public:
    explicit Shape(std::string n) : name(std::move(n)) {}
    virtual ~Shape() = default;

    virtual double area() const = 0;
    
    void printInfo() const {
        std::cout << "Shape: " << name << ", Area: " << area() << std::endl;
    }
};

class Circle : public Shape {
private:
    double radius;
    static constexpr double PI = 3.141592653589793;
public:
    Circle(std::string n, double r) : Shape(std::move(n)), radius(r) {}
    
    double area() const override {
        return PI * radius * radius;
    }
};

int main() {
    std::vector<std::unique_ptr<Shape>> shapes;
    shapes.push_back(std::make_unique<Circle>("MyCircle", 5.0));

    // Print all shapes' info using a lambda and range-based for
    auto print_func = [](const auto& shape_ptr) {
        shape_ptr->printInfo();
    };

    for (const auto& shape : shapes) {
        print_func(shape);
    }

    return 0;
}
