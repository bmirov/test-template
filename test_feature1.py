# A sample test function for pytest
def add_numbers(a, b):
    return a + b


def test_add_numbers():
    # Arrange
    a = 2
    b = 3

    # Act
    result = add_numbers(a, b)

    # Assert
    assert result == 5
