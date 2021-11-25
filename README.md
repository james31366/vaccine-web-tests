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

If your user is not registered, yet you have to run this first.

```shell
robot .\registration.robot
```

After you registered your citizen, You need to run tests file using the robot framework

```shell
robot .\test_reservation.robot
```

## Test and Assigned Task

### Tasks

1. Visit the home page and verify 2 items on the home page. Don't write tests that depend a lot on the DOM or CSS
   styles, because those may change.

2. Visit the home page, then click on (make a reservation button), and create a reservation. Verify that the
   registration was created.

3. Cancel the reservation that you made in the previous test.

### Test cases Table

| Test Cases | Test Status |
|:---------|:-----|
| Check Homepage with two elements. | PASS |
| Go to reserve, fill the form and submit the reservation. | PASS |
| Go to my info page to check the reservation status and cancel | PASS |

## References

### Online Tutorial and online Resources

- [Web Automation using Robot Framework Playlist](https://www.youtube.com/playlist?list=PLUDwpEzHYYLsCHiiihnwl3L0xPspL7BPG)
- [Kvent/test_auth_fail](https://github.com/bleachjade/Kvent/blob/master/Kvent/tests/e2e/test_auth_fail.robot)

### Project References

- [Vaccine Haven Wiki Page](https://github.com/3-00AM/vaccine-haven/wiki)
- [Vaccine Haven Website](https://vaccine-haven.herokuapp.com/)