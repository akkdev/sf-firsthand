public class AccountTriggerHandler {
    public static void updateRating(List<Account> accList) {
        if (!accList.isEmpty()) {
            for (Account acc : accList) {
                if (!String.isBlank(acc.Industry)) {
                    if (acc.Industry == 'Energy') {
                        acc.Rating = 'Hot';
                    } else {
                        acc.Rating = 'Cold';
                    }
                }
            }
        }
    }
}