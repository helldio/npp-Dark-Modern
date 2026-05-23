# A classic Python example demonstrating OOP, decorators, and type hinting.
import math
from typing import List, Optional

class Vector:
    """Represents a 2D Vector."""
    
    def __init__(self, x: float, y: float) -> None:
        self.x = x
        self.y = y
        
    @property
    def magnitude(self) -> float:
        return math.sqrt(self.x**2 + self.y**2)
        
    def scale(self, factor: float) -> 'Vector':
        """Scale vector by factor."""
        return Vector(self.x * factor, self.y * factor)

    def __repr__(self) -> str:
        return f"Vector({self.x:.2f}, {self.y:.2f})"

def find_longest_vector(vectors: List[Vector]) -> Optional[Vector]:
    if not vectors:
        return None
    longest = vectors[0]
    for v in vectors[1:]:
        if v.magnitude > longest.magnitude:
            longest = v
    return longest

if __name__ == "__main__":
    # Test our implementation
    v1 = Vector(3.0, 4.0)
    v2 = Vector(-1.5, 9.0)
    result = find_longest_vector([v1, v2])
    print(f"Longest: {result} with magnitude {result.magnitude if result else 0.0}")
