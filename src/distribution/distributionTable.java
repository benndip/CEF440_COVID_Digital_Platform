package distribution;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import distribution.DistributionItem;

/**
 * Servlet implementation class distributionTable
 */
@WebServlet("/distributionTable")
public class distributionTable extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public distributionTable() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		DistributionItem[] distributionItems = {
				new DistributionItem(1,"South-West",12,20,3,7),
				new DistributionItem(1,"North-West",12,20,3,7),
				new DistributionItem(1,"Litoral",12,20,3,7),
				new DistributionItem(1,"East",12,20,3,7),
				new DistributionItem(1,"North",12,20,3,7),
				new DistributionItem(1,"West",12,20,3,7),
				new DistributionItem(1,"South",12,20,3,7),
				new DistributionItem(1,"Far-North",12,20,3,7),
				new DistributionItem(1,"Adamawa",12,20,3,7),
				new DistributionItem(1,"Center",12,20,3,7),
		};
		
		request.setAttribute("distributionItems", distributionItems);

		this.getServletContext().getRequestDispatcher("/WEB-INF/Table.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}