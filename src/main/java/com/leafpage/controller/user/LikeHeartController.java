package com.leafpage.controller.user;

import com.leafpage.controller.Controller;
import com.leafpage.dao.LikeyDAO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class LikeHeartController implements Controller {
    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {

        System.out.println("좋아요 기능입니다");

        //1. 사용자 정보 입력 추출
        HttpSession session = request.getSession();
        Long userNo = (Long) session.getAttribute("userNo");
        String isbn = request.getParameter("isbn");

        //2. DB 연동 처리
        LikeyDAO likeyDAO = LikeyDAO.getInstance();
        PrintWriter out = response.getWriter();

        int checkLike = likeyDAO.checkLike(userNo, isbn);

        if (checkLike == 1) {
            int deleteLike = likeyDAO.deleteLike(userNo, isbn);
            if (deleteLike == 1) {
                System.out.println("좋아요 삭제");
                out.print(0);
                out.close();
            }
        } else {
            int insertLike = likeyDAO.insertLike(userNo, isbn);
            if (insertLike == 1) {
                System.out.println("좋아요 추가");
                out.print(1);
                out.close();
            }
        }

        int heartCount = likeyDAO.likeCount(isbn);

        //3. 화면 이동


        //request정보 담기
        request.setAttribute("heartClick", checkLike);
        request.setAttribute("likeCount", heartCount);

        return "detailPageView.do";
    }
}