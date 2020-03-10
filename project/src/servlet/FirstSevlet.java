package servlet;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FirstSevlet
 */
@WebServlet("/FirstSevlet")
public class FirstSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FirstSevlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
		
	PrintWriter pw=response.getWriter();
	pw.write("hello");
	request.setAttribute("back","back");
	 System.out.println(request.getServletPath());
	request.getRequestDispatcher("NewFile.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		System.out.println("hello");
		//OutputStream os=response.getOutputStream();
		//os.write("wangxiaoer".getBytes());
		//os.flush();
		//os.close();
		
		String str=request.getHeader("referer");
		System.out.println("str="+str);
		InputStream is=request.getInputStream();
		 byte[] buf = new byte[1024];
		 StringBuffer sb = new StringBuffer();
		int len = 0;
		try {
	while ((len=is.read(buf)) != -1) {
		sb.append(new String(buf, 0, len, "utf-8"));
		}
		} catch (IOException e) {
		e.printStackTrace();
		}
		System.out.println("sb="+new String(sb.toString().getBytes()));
		PrintWriter pw=response.getWriter();
		pw.write("wangxiaoer");
		pw.flush();
		pw.close();
	}

}
