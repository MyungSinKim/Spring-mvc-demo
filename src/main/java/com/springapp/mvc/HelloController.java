package com.springapp.mvc;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

@Controller
@RequestMapping("/")
public class HelloController {


    @RequestMapping("/")
    public String printWelcome(ModelMap model) {
        model.addAttribute("message", "Hello world!");
        return "pages/hello";
    }

    @RequestMapping(value = "/getuser", method = RequestMethod.GET, produces = {MediaType.APPLICATION_JSON_VALUE})
    public
    @ResponseBody
    Map<String, String> hellot(HttpServletRequest request, HttpServletResponse response) {
        response.setHeader("asdfasdfas", "asdfasdfasdfasdf");
        System.out.println("------------------------生成json");

        Map<String, String> map = new HashMap<String, String>();
        map.put("1", "1");
        map.put("2", "2");
        map.put("3", "3");
        map.put("4", "4");
        return map;
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET, produces = {MediaType.APPLICATION_JSON_VALUE})
    public
    @ResponseBody
    Map<String, Object> list(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("------------------------生成json");

        List<Map<String, String>> rows = new ArrayList<Map<String, String>>();
        Map<String, String> map = null;
        for (int i = 0; i < 30; i++) {
            map = new HashMap<String, String>();
            map.put("no", "1");
            map.put("product", "product" + i);
            map.put("time", (new Date()).toString());
            if (i % 2 == 0) {
                map.put("state", "on");
            } else {
                map.put("state", "off");
            }
            rows.add(map);
        }
        Map<String, Object> mm = new HashMap<String, Object>();
        mm.put("record", rows);
        mm.put("pageNumber", 2);
        mm.put("pageCount", 5);
        mm.put("pageSize", 10);
        return mm;
    }

    @RequestMapping(value = "/datalist", method = RequestMethod.POST, produces = {MediaType.APPLICATION_JSON_VALUE})
    public
    @ResponseBody
    Map<String, Object> getData(@RequestBody Map<String,Object> postData,HttpServletRequest request, HttpServletResponse response) {

//        String pageSize=(String)postData.get("pageSize");
//        String pageNumber=(String)postData.get("pageNumber");

        int pageSize=(Integer)postData.get("pageSize");;
        int pageNumber=(Integer)postData.get("pageNumber");
        System.out.println(pageSize + "--" + pageNumber);

        int start = (pageNumber - 1) * pageSize + 1;

        List<Map<String, String>> rows = new ArrayList<Map<String, String>>();
        Map<String, String> map = null;
        for (int i = start; i < start + pageSize; i++) {
            map = new HashMap<String, String>();
            map.put("no", i + "");
            map.put("product", "product" + i);
            map.put("time", (new Date()).toString());
            if (i % 2 == 0) {
                map.put("state", "on");
            } else {
                map.put("state", "off");
            }
            rows.add(map);
        }


        Map<String, Object> mm = new HashMap<String, Object>();
        mm.put("rows", rows);
        mm.put("total", 1000);
        return mm;
    }


//    public void test(){
//        String url="http://cm.qdbee.org/hbservice/HBService.asmx";//提供接口的地址
//        String soapaction="Mrf.HB.WebService";   //域名，这是在server定义的
//
//        Service service=new Service();
//        try{
//            Call call=(Call)service.createCall();
//            call.setTargetEndpointAddress(url);
//            call.setOperationName(new QName(soapaction,"UploadRealEnergyData")); //设置要调用哪个方法
//
//            call.addParameter(new QName(soapaction,"xd"), //设置要传递的参数
//                    org.apache.axis.encoding.XMLType.XSD_ANY,
//                    javax.xml.rpc.ParameterMode.IN);
//            //call.setReturnType(new QName(soapaction,"UploadRealEnergyDataResult")); //要返回的数据类型（自定义类型）
//            //call.setReturnType(XMLType.XSD_INT);
//            call.setReturnType(org.apache.axis.encoding.XMLType.XSD_INT);//（标准的类型）
//
//            call.setUseSOAPAction(true);
//            call.setSOAPActionURI("Mrf.HB.WebService/UploadRealEnergyData");
//
//
//            System.out.println(document.getClass().toString());
//            System.out.println(document.asXML());
//
//
//
//
//            String A ="<?xml version=\"1.0\" encoding=\"utf-8\"?><soap:Envelope xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\"><soap:Body><UploadRealEnergyData xmlns=\"Mrf.HB.WebService\"><xd>"+document.getClass().toString()+"</xd></UploadRealEnergyData></soap:Body></soap:Envelope>";
//
//            System.out.println(A);
//            Integer v=(Integer)call.invoke(new Object[]{A.getBytes()});//调用方法并传递参数
//
//            System.out.println(v);
//
//
//        }catch(Exception ex)
//        {
//            ex.printStackTrace();
//        }
//    }

}