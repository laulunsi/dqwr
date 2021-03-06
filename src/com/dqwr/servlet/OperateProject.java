package com.dqwr.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Emp;

import com.dqwr.dao.DataBaseDao;
import com.dqwr.entity.ZC;
import com.dqwr.project.dao.impl.ProjectDaoImpl;
import com.dqwr.publishinfo.dao.impl.PublishHyInfoImpl;
import com.dqwr.publishinfo.entity.Info;


public class OperateProject extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 DataBaseDao database = null;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OperateProject() {
        super();
        database = new com.dqwr.dao.DataBaseDao();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection con = database.connection();
		int operateid=Integer.parseInt(request.getParameter("operateid"));
		int empid=Integer.parseInt(request.getParameter("empid"));
		String pageno=request.getParameter("pageno");
		ProjectDaoImpl  projectimpl=new ProjectDaoImpl();
		response.setContentType("text/html;charset=UTF-8");
		ResultSet res=null;
		PrintWriter output=response.getWriter();
		Emp emp=new Emp();
		if(operateid==0){
			output.print("<script language=javascript>" + "if(confirm('确认删除？')){window.location.href='/dqwr/DeleteProject?empid="+empid+"&pageno="+pageno+"';}else{ window.location.href='ws/projectManage.jsp&pageno="+pageno+"';};"+"</script>");
		}else if(operateid==1){
			request.getRequestDispatcher("ws/editProject.jsp").forward(request,response);
		}else if(operateid==2){
			request.getRequestDispatcher("ws/lookProject.jsp").forward(request,response);
		}else if(operateid==3){
			request.getRequestDispatcher("ws/processMonitor.jsp?empid='"+empid+"'").forward(request,response);
		}
		database.closeConnection(con);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
}
