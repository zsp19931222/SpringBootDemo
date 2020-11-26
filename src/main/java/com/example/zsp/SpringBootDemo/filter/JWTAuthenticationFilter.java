package com.example.zsp.SpringBootDemo.filter;

import com.alibaba.fastjson.JSON;
import com.example.zsp.SpringBootDemo.error.BizException;
import com.example.zsp.SpringBootDemo.error.ResultBody;
import com.example.zsp.SpringBootDemo.util.CommonEnum;
import com.example.zsp.SpringBootDemo.util.IsNullUtil;
import io.jsonwebtoken.Jwts;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.www.BasicAuthenticationFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

/**
 * description:
 * * token的校验
 * * 该类继承自BasicAuthenticationFilter，在doFilterInternal方法中，
 * * 从http头的Authorization 项读取token数据，然后用Jwts包提供的方法校验token的合法性。
 * * 如果校验通过，就认为这是一个取得授权的合法请求
 * author：Andy on 2020/11/18 0018-10:31
 * email:zsp872126510@gmail.com
 */
public class JWTAuthenticationFilter extends BasicAuthenticationFilter {

    public JWTAuthenticationFilter(AuthenticationManager authenticationManager) {
        super(authenticationManager);
    }

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        //super.doFilterInternal(request, response, chain);
        String token = request.getHeader("token");
        if (IsNullUtil.getInstance().isEmpty(token)) {
            chain.doFilter(request, response);
            return;
        }
        UsernamePasswordAuthenticationToken authentication = getAuthentication(token,response);
        SecurityContextHolder.getContext().setAuthentication(authentication);
        chain.doFilter(request, response);
    }

    private UsernamePasswordAuthenticationToken getAuthentication(String token,HttpServletResponse response) {
        if (token != null) {
            // parse the token.
            try {
                String user = Jwts.parser()
                        .setSigningKey("MyJwtSecret")
                        .parseClaimsJws(token)
                        .getBody()
                        .getSubject();
                if (user != null) {
                    return new UsernamePasswordAuthenticationToken(user, null, new ArrayList<>());
                }
            }catch (Exception e){
                ResultBody.writeJSON2Response(JSON.toJSONString(ResultBody.error(CommonEnum.SIGNATURE_NOT_MATCH.getResultCode(),CommonEnum.SIGNATURE_NOT_MATCH.getResultMsg())),response);
            }

            return null;
        }
        return null;
    }

}