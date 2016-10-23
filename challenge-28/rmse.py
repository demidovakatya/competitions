def rmse(y_pred, y):
    import numpy as np
    return np.sqrt(np.mean(np.power(y - y_pred), 2))