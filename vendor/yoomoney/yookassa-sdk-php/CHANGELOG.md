### v3.5.0 от 02.07.2024
* Отключен платежный метод Installments

### v3.4.0 от 14.06.2024
* Устанавливаем cms_name = yookassa_sdk_php_3 если он не установлен в запросе
* Обновлены тесты
* Исправлены неточности в типах и описаниях

### v3.3.0 от 01.04.2024
* Отключен платежный метод Qiwi

### v3.2.0 от 11.12.2023
* Добавлено поле `refund_method` в возвратах
* Добавлено поле `sbp_operation_id` в `PaymentMethodSbp`
* Добавлено поле `merchant_customer_bank_account` в объекте `FraudData`
* Добавлен статус самозанятого `unregistered`
* Добавлен список провайдеров онлайн-касс `FiscalizationProvider`
* Добавлен объект Me с подобъектом `Fiscalization`

### v3.1.1 от 16.10.2023
* PaymentRequest.save_payment_method может быть null

### v3.1.0 от 30.06.2023
* Добавлена обработка неизвестных методов оплаты
* Добавлен новый метод оплаты sber_loan

### v3.0.2 от 23.06.2023
* Изменения в текстах

### v3.0.1 от 16.06.2023
* Отключен метод оплаты Альфа-Банк

### v3.0.0 от 07.06.2023
* Обновленная версия SDK
* Поддержка PHP 8+
* Отказ от поддержки PHP < 8
* Изменена структура файлов
* Переработана логика работы с моделями
* Добавлено использование валидатора данных в моделях
* Массивы объектов заменены на объекты-коллекции 