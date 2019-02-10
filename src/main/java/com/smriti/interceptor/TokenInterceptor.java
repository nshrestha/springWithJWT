//package com.smriti.interceptor;
//
//import org.springframework.web.servlet.ModelAndView;
//import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//public class TokenInterceptor extends HandlerInterceptorAdapter {
//    @Override
//    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
//            throws Exception {
//
//        if (request.getHeader("Authorization") != null) {
////            while (TokenHandler.jwtValidator(request.getHeader("Authorization"))) {
////                return true;
////            }
//
////            JWTTokenUtility.decodedJWT()
//        }
//        return true;
//    }
//
//    @Override
//    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
//                           ModelAndView modelAndView) throws Exception {
//        super.postHandle(request, response, handler, modelAndView);
//    }
//
//    @Override
//    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler,
//                                Exception ex) throws Exception {
//        super.afterCompletion(request, response, handler, ex);
//    }
//}
//
