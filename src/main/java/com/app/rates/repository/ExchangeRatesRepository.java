package com.app.rates.repository;

import com.app.rates.entity.Currency;
import com.app.rates.entity.ExchangeRate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ExchangeRatesRepository extends JpaRepository<ExchangeRate, Long> {

    @Query("SELECT r FROM RATES r WHERE UPPER(r.currency) = :currency AND r.date between CURRENT_TIMESTAMP() - 1 and CURRENT_TIMESTAMP() + 1 order by r.value DESC")
    public List<ExchangeRate> getLatestByCurrency(final String currency);

    @Query("SELECT c FROM CURRENCIES c")
    public List<Currency> getCurrencies();

    @Query("SELECT r FROM RATES r WHERE r.date between CURRENT_TIMESTAMP() - 1 and CURRENT_TIMESTAMP() + 1 order by r.value DESC")
    public List<ExchangeRate> getLatestRates();
}
