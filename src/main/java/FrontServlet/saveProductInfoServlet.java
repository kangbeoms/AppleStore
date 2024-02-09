package FrontServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class saveProductInfoServlet
 */
@WebServlet("/saveProductInfoServlet")
public class saveProductInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public saveProductInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("saveproductinfoServlet을 실행합니다.");
		
		 	String product_code = request.getParameter("productCode");
		 	String product_name = request.getParameter("productName");
	        String price = request.getParameter("price");
	        String origin = request.getParameter("origin");
	        String size = request.getParameter("size");
	        String weight = request.getParameter("weight");	
	        
	        // 세션을 가져옴. 세션이 없으면 새로 생성함
	        HttpSession session = request.getSession(true);
	        
	        System.out.println("중간");
	        
	        
	        // 세션에 상품 정보를 저장
	        session.setAttribute("product_code", product_code);
	        session.setAttribute("product_name", product_name);
	        System.out.println(product_name);
	        //System.out.println("세션에 저장 된 이름 :"+session.getAttribute(product_name).toString()!=null?session.getAttribute(product_name).toString(): 0 );
	        session.setAttribute("price", price);
	        session.setAttribute("origin", origin);
	        session.setAttribute("size", size);
	        session.setAttribute("weight", weight);
	        
	        // 클라이언트에게 성공적인 응답을 반환
	        response.setContentType("text/plain");
	        response.setCharacterEncoding("UTF-8");
	        response.getWriter().write("상품 정보가 세션에 저장되었습니다.");
	    
	        System.out.println("끝");
		
		
	        
	        
		
		
		
		
		
		
		
		
		
	}

}