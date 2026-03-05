# Session 2 -- Homework: Multivariate Linear Regression

## Assignment

Extend the linear regression from Session 2 to **multiple features** (multivariate). Implement from scratch in NumPy, then refactor to PyTorch.

**Course:** B4990 -- Artificial Intelligence, Universidad Nacional de Rio Negro
**Assigned:** Session 2 (Wed Mar 4, 2026)
**Deadline:** Before Session 4 (Wed Mar 11, 2026)
**Deliverable:** `homework/session-02/homework.ipynb` in your student repository

---

## Tasks

### Task 1: Generate Multivariate Synthetic Data

- Create a synthetic dataset with 2 features: `x1` and `x2`
- True relationship: `y = 3*x1 + (-2)*x2 + 7 + noise`
- Use `np.random.seed(42)` for reproducibility
- Generate at least 200 samples
- Visualize the data (scatter plots of y vs x1 and y vs x2)

### Task 2: Multivariate Linear Regression in NumPy

- Implement the model: `y_hat = X @ w + b` where `w` is a vector of shape `(2,)` and `b` is a scalar
- Implement MSE loss
- Derive and implement the gradients of MSE with respect to `w` (vector) and `b` (scalar)
  - Hint: `dL/dw = (2/N) * X.T @ (y_hat - y)` and `dL/db = (2/N) * sum(y_hat - y)`
- Train with batch gradient descent
- Plot the loss curve over training iterations
- Print the learned `w` and `b` values. They should be close to `[3, -2]` and `7`

### Task 3: Refactor to PyTorch

- Convert the same problem to PyTorch tensors
- Use `requires_grad=True` for the parameters
- Use `loss.backward()` for gradient computation
- Use `torch.optim.SGD` for parameter updates
- Verify that the PyTorch gradients match the NumPy gradients (at least for the first few iterations)
- Plot the loss curve and confirm it matches the NumPy version

### Task 4: Learning Rate Experiment

- Run gradient descent with at least 4 different learning rates (e.g., 0.0001, 0.001, 0.01, 0.1)
- Plot all loss curves on the same axes
- Write a brief markdown cell (2-3 sentences) describing what you observe

### Task 5: Reflection Question

Answer in a markdown cell:

> "Why does SGD converge differently than batch GD? When would you prefer one over the other?"

Write at least 3-4 sentences. Reference what you observed during Session 2.

---

## Rubric

This homework is graded **complete/incomplete** (not scored for quality).

### Complete

All of the following must be met:

- [ ] Notebook runs end-to-end without errors
- [ ] Synthetic data is generated correctly with 2 features
- [ ] NumPy implementation includes manual gradient computation (not using a library's built-in gradient)
- [ ] Loss curve is plotted and shows convergence
- [ ] Learned parameters are reasonably close to the true values
- [ ] PyTorch refactor uses `requires_grad`, `backward()`, and an optimizer
- [ ] Learning rate experiment includes at least 3 different rates with a plot
- [ ] Reflection question is answered with at least 3 sentences
- [ ] AI usage is documented (which tools you used and how -- a brief note at the end is sufficient)

### Incomplete

Any of the following results in incomplete:

- Notebook does not run (import errors, runtime errors)
- Missing any of the 5 tasks
- Gradients are computed using a library function instead of manually (for the NumPy part)
- Reflection question is missing or is only 1 sentence

---

## Submission

1. Create your notebook at `homework/session-02/homework.ipynb` in your student repository
2. Commit and push to `main` before the deadline
3. That is the submission -- no PR, no branch, just commit to `main`

---

## Tips

- Start from the Session 2 notebook. Copy the single-variable code and modify it for 2 features.
- The key change: `w` becomes a vector, and `x * w` becomes `X @ w` (matrix multiplication).
- If you get shape errors, print `.shape` after every operation until you find the mismatch.
- For the PyTorch refactor, `torch.tensor` can take a NumPy array directly: `X_t = torch.tensor(X, dtype=torch.float32)`.

