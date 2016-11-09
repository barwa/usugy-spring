//package com.usugy.service;
//
//
//import com.usugy.model.Account;
//import com.usugy.model.Token;
//import com.usugy.repository.TokenRepository;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.EnableTransactionManagement;
//import org.springframework.transaction.annotation.Transactional;
//
//import java.net.MalformedURLException;
//import java.net.URL;
//import java.util.UUID;
//
///**
// * Created by tomek on 2016-11-04.
// */
//@Service
//@EnableTransactionManagement
//public class TokenServiceImpl implements TokenService {
//
//    @Autowired
//    private TokenRepository tokenRepository;
//
//    @Autowired
//    private MailService mailService;
//
//    public Token createToken(Account account) {
//        Token token = new Token();
//        token.setToken(UUID.randomUUID().toString());
//        token.setAccount(account);
//        return token;
//    }
//    @Transactional
//    public Token save(Token token) {
//        return tokenRepository.save(token);
//    }
//
//    public Token findbyId(String tokenId) {
//        return tokenRepository.findOne(tokenId);
//    }
////
////    public void sendAccountActivationOrPasswordResetMail(Account account) throws MalformedURLException{
////          String subject = "";
////          String message = "";
//////        String from = System.getProperty();
////          String from = "tomasz.barwicki@gmail.com";
//////          String toMail = account.getEmail();
////          String toMail = "tomasz.barwicki@gmail.com";
//////        String externalServer = Configuration.root().getString("server.hostname");
////          String externalServer = "localhost:8080";
////
////          String urlString = urlString = "http://" + externalServer + "/" + account.getToken().getType() + "/" + account.getToken().getToken();
////          URL url = new URL(urlString); // validate the URL
////
////          if(account.getToken().getType().equals(Token.RESET)) {
//////                subject = Messages.get("mail.reset.ask.subject");
//////                message = Messages.get("mail.reset.ask.message", url.toString());
////              subject = "Zmiana hasla";
////              message = "Hej!<br> Twoj link do zmiany hasla: <br> "+ urlString;
////
////          }
////          else if(account.getToken().getType().equals(Token.ACTIVATE)) {
//////                subject = Messages.get("mail.change.ask.subject");
//////                message = Messages.get("mail.change.ask.message", url.toString());
////              subject = "Aktywacja konta";
////              message = "Hej!<br> Twoj link aktywacyjny: <br> "+ urlString;
////          }
////
////        mailService.sendMail(from, toMail, subject, message);
////
////    }
////}
