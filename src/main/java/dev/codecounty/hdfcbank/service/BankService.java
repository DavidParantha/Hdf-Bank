package dev.codecounty.hdfcbank.service;

import dev.codecounty.hdfcbank.models.LoginResult;
import dev.codecounty.hdfcbank.models.ServiceResponse;
import dev.codecounty.hdfcbank.models.Transaction;
import dev.codecounty.hdfcbank.models.User;

import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

public interface BankService {
    Optional<LoginResult> authenticate(int accountNo, String password) throws SQLException;

    boolean changePassword(int accountNo, String oldPlain, String newPlain) throws SQLException;

    boolean processDeposit(int accountNo, BigDecimal amount);

    BigDecimal getBalance(int accountNo);

    List<Transaction> getTransactionHistory(int accountNo);

    ServiceResponse processTransfer(int fromAcc, int toAcc, BigDecimal amount);

    String withdraw(int accountNo, BigDecimal amount);

    Optional<LoginResult> registerUser(User user);

    public boolean recoverAccount(String email);

    public boolean applyForLoan(String firstName, String email, String loanType);
}