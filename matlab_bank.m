dates = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, ...
         11, 12, 13, 14, 15, 16, 17, 18, 19, 20, ...
         21, 22, 23, 24, 25, 26, 27, 28, 29, 30]; 
rates = [396.56, 396.56, 396.9, 396.9, 396.9, 396.9, 396.76, 396.47, 396.85, 396.84, ...
         396.84, 396.84, 397.22, 397.78, 398.09, 398.1, 398.94, 398.94, 398.94, 398.64, ...
         398.84, 398.74, 398.88, 398.97, 398.97, 398.97, 398.36, 398.36, 398.27, 397.92]; 


p = polyfit(dates, rates, 1);


plot(dates, rates, 'b:^', 'MarkerSize', 7);
hold on;
plot(31, polyval(p, 31), 'r*', 'MarkerSize', 10);
hold off;

xlabel('Days of January');
ylabel('Exchange Rate (AMD per 1 USD)');
title('USD to AMD Exchange Rate in January');
legend('Actual Rates', 'Predicted Rate (31st)');
grid on;


fprintf('Predicted exchange rate for January 31st: %.2f AMD per 1 USD\n', ...
        polyval(p, 31));
