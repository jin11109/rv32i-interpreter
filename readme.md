# rv32i-interpreter
This repository is about [NCKU CA Quiz 3 Problem B](https://hackmd.io/@sysprog/arch2025-quiz3-sol#Problem-B), which involves implementing a simple **RV32I interpreter** written in C.
For development details and notes, please refer to the [Development Notes](https://hackmd.io/@jin11109/rv32i-interpreter).

## Quick start
Build both the interpreter and the test program:
```bash
$ make
```
You can also build them separately:
```bash
$ make interpreter
# or
$ make test
```

## Test

The provided test program performs a minimal functional check of the interpreter.
It uses the `JAL` and `JALR` instructions to jump to a print routine that outputs `ok\n` on the screen, and then returns to terminate the program.

This program can be used to verify:

* Whether the **`jal`** and **`jalr`** instructions correctly perform jumps and returns.
* Whether the **print character** (`ecall 11`) and **exit** (`ecall 10`) system calls function as expected.
* Whether the **`lw`** instruction correctly loads data from memory.

> **Warning:**
> The current test only verifies basic functionality and does **not** cover all possible edge cases or instruction variations.

---

### Run the Test Program

To build and run the test automatically:

```bash
$ make check
```

Or manually run the interpreter with the test binary:

```bash
$ ./rv32i-interpreter ./test
```

### Example Output

```bash
$ ./rv32i-interpreter ./test
ok
```
