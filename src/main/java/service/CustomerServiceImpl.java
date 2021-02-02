package service;

import model.Customer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerServiceImpl implements CustomerService {
    private static Map<Integer, Customer> customerMap;
    static {
        customerMap = new HashMap<>();
        customerMap.put(1, new Customer(1, "Mung", "mung@cg.vn", "Nam Dinh"));
        customerMap.put(2, new Customer(2, "Duy", "duy@cg.vn", "Nam Dinh"));
        customerMap.put(3, new Customer(3, "Duyet", "duyet@cg.vn", "Ha Noi"));
        customerMap.put(4, new Customer(4, "Hieu", "Hieu@cg.vn", "Ha Noi"));
    }

    @Override
    public List<Customer> findAll() {
        return new ArrayList<>(customerMap.values());
    }

    @Override
    public Customer findById(int id) {
        return customerMap.get(id);
    }
}