# Vaccine Web Test

I use the end-to-end test by using the Robot Framework.

**Testing tool**: Robot Framework with Selenium.

## Requirements

- [Python](https://www.python.org/downloads/)

## Getting Started

First, go to the project directory then install the requirements

```shell
pip install -r requirements.txt
```

Then you need to run tests file using the robot framework
```shell
robot .\test_reservation.robot
```

## Test and Assigned Task

### Tasks
1. Visit the home page and verify 2 items on the home page.  Don't write tests that depend a lot on the DOM or CSS styles, because those may change.

2. Visit the home page, then click on (make a reservation button), and create a reservation.  Verify that the registration was created.

3. Cancel the reservation that you made in the previous test.

### Test cases Table
| Test Cases | Test Status |
|:---------|:-----|
| Check Homepage with two elements. | PASS |
| Go to reserve, fill the form and submit the reservation. | PASS |
| Go to my info page to check the reservation status and cancel | PASS |