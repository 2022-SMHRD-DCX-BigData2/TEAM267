package kr.board.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FlaskController {
    @RequestMapping(value = "/POST.do", method = RequestMethod.GET)
    public ModelAndView test() {
        ModelAndView mav = new ModelAndView();
        
        String url = "http://localhost:8084/smhrd/POST.do";
        String sb = "";
        try {
            HttpURLConnection conn = (HttpURLConnection) new URL(url).openConnection();
            conn.setRequestMethod("POST");
            conn.setRequestProperty("Content-Type", "application/json; utf-8");
            conn.setDoOutput(true);
            
            String jsonInputString = "{\"param1\": \"value1\", \"param2\": \"value2\"}";
            try(OutputStream os = conn.getOutputStream()) {
                byte[] input = jsonInputString.getBytes("utf-8");
                os.write(input, 0, input.length);           
            }

            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));
            String line = null;
            while ((line = br.readLine()) != null) {
                sb = sb + line + "\n";
            }
            System.out.println("========br======" + sb.toString());
            if (sb.toString().contains("ok")) {
                System.out.println("test");
                
            }
            br.close();

            System.out.println("" + sb.toString());
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        mav.addObject("test1", sb.toString()); // "test1"은 jsp 파일에서 받을 때 이름, 
                                               // sb.toString은 value 값(여기서는 test)
        mav.addObject("fail", false);
        mav.setViewName("POST");   // jsp 파일 이름
        return mav;
    }
}