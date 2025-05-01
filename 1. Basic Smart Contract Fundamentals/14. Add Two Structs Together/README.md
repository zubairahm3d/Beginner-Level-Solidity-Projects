### 14. Add Two Structs Together  
**Description**: Combines two `Point` structs (with `x` and `y` coordinates) into a new struct by adding the respective `x` and `y` values together.

---

### 🔑 Key Concepts:

- `struct Point`: A custom data type that defines a point in a 2D space, consisting of:
  - `uint x`: The x-coordinate of the point.
  - `uint y`: The y-coordinate of the point.

- `setPoints()`: A public function that accepts two `Point` structs and sets them as `a` and `b`.

- `getPoint()`: A public view function that returns a new `Point` struct, where the `x` and `y` values are the sum of the corresponding `x` and `y` from `a` and `b`.

---

### 💡 Extra Notes:

- **Struct Operations**: This example demonstrates how you can operate on structs by accessing and modifying their individual properties.
- **Additive Logic**: The `getPoint()` function performs simple arithmetic (addition) on the properties of two `Point` structs to generate a new combined result.
- **State Modification**: The `setPoints()` function modifies the contract's state by assigning values to the `a` and `b` structs.
- **Return Type**: The `getPoint()` function returns a new `Point` struct with the combined values of `a` and `b`.