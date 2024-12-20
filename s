import matplotlib.pyplot as plt
import numpy as np

classifiers = ['Logistic Regression', 'Decision Tree', 'Random Forest', 'SVM', 'KNN']
accuracies = [metrics_lr[0], metrics_dt[0], metrics_rf[0], metrics_svm[0], metrics_knn[0]]

plt.figure(figsize=(10, 6))
plt.barh(classifiers, accuracies, color='skyblue')
plt.xlabel('Accuracy')
plt.title('Classifier Performance Comparison')
plt.xlim(0, 1)
for index, value in enumerate(accuracies):
    plt.text(value, index, f'{value:.2f}')
plt.show()
