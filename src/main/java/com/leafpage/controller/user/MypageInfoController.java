package com.leafpage.controller.user;

import com.leafpage.controller.Controller;
import com.leafpage.gwakdao.BookDAO;
import com.leafpage.gwakdto.BookContentDTO;
import com.leafpage.gwakdto.MypageBooksDTO;
import com.leafpage.gwakdto.MypageReturnedBooksDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class MypageInfoController implements Controller {
    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {

        ArrayList<MypageBooksDTO> userBooks = new ArrayList<>();
        ArrayList<MypageReturnedBooksDTO> userReturnedBooks = new ArrayList<>();
        List<BookContentDTO> bookText = new ArrayList<>();

        BookDAO bookDAO = new BookDAO();

        int totalRentals = 0;

        userBooks = bookDAO.getUserLendingBook();

        userReturnedBooks = bookDAO.getUserReturnedBook();

        totalRentals = bookDAO.getTotalRentals();

        bookText = bookDAO.getLendingBookContent();

        HttpSession session = request.getSession();

        session.setAttribute("books", userBooks);

        session.setAttribute("totalRentals", totalRentals);

        session.setAttribute("userReturnedBooks", userReturnedBooks);

        session.setAttribute("bookText", bookText);

        return "mypage";
    }
}