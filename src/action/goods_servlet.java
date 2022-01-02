package action;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import orm.Tgoods;
import service.liuService;

import dao.DB;


public class goods_servlet extends HttpServlet
{ 
	public void service(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException 
	{
		String type=req.getParameter("type");
		
		if(type.endsWith("goodsAdd"))
		{
			goodsAdd(req, res);
		}
		if(type.endsWith("goodsMana"))
		{
			goodsMana(req, res);
		}
		if(type.endsWith("goodsDel"))
		{
			goodsDel(req, res);
		}
		if(type.endsWith("goodsDetailHou"))
		{
			goodsDetailHou(req, res);
		}
		
		if(type.endsWith("goodsAll"))
		{
			goodsAll(req, res);
		}
		if(type.endsWith("goodsByCatelog"))
		{
			goodsByCatelog(req, res);
		}
		if(type.endsWith("goodsDetailQian"))
		{
			goodsDetailQian(req, res);
		}
		if(type.endsWith("goods_search"))
		{
			goods_search(req, res);
		}
	}
	
	
	public void goodsAdd(HttpServletRequest req,HttpServletResponse res)
	{
		int catelog_id=Integer.parseInt(req.getParameter("catelog_id"));
		String bianhao=req.getParameter("bianhao");
		String mingcheng=req.getParameter("mingcheng");
		
		String jieshao=req.getParameter("jieshao");
		String fujian=req.getParameter("fujian");
		int shichangjia=Integer.parseInt(req.getParameter("shichangjia"));
		
		int tejia=Integer.parseInt(req.getParameter("shichangjia"));
		String shifoutejia="fou";
		int kucun=0;
		String del="no";
		
		String sql="insert into t_goods(catelog_id,bianhao,mingcheng,jieshao,fujian,shichangjia,tejia,shifoutejia,kucun,del) " +
				   "values(?,?,?,?,?,?,?,?,?,?)";
		Object[] params={catelog_id,bianhao,mingcheng,jieshao,fujian,shichangjia,tejia,shifoutejia,kucun,del};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("message", "Add successful");
		req.setAttribute("path", "goods?type=goodsMana");
		
        String targetURL = "/common/success.jsp";
		dispatch(targetURL, req, res);
	}
	public void goodsDel(HttpServletRequest req,HttpServletResponse res)
	{
		int id=Integer.parseInt(req.getParameter("id"));
		String sql="update t_goods set del='yes' where id="+id;
		Object[] params={};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("message", "Delete successful");
		req.setAttribute("path", "goods?type=goodsMana");
		
        String targetURL = "/common/success.jsp";
		dispatch(targetURL, req, res);
	}
	
	
	public void goodsMana(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		List goodsList=new ArrayList();
		String sql="select * from t_goods where del='no' order by shifoutejia";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Tgoods goods=new Tgoods();
				
				goods.setId(rs.getInt("id"));
				goods.setCatelog_id(rs.getInt("catelog_id"));
				goods.setBianhao(rs.getString("bianhao"));
				
				goods.setMingcheng(rs.getString("mingcheng"));
				goods.setJieshao(rs.getString("jieshao"));
				goods.setFujian(rs.getString("fujian"));
				
				goods.setShichangjia(rs.getInt("shichangjia"));
				goods.setTejia(rs.getInt("tejia"));
				goods.setShifoutejia(rs.getString("shifoutejia"));
				goods.setKucun(rs.getInt("kucun"));
				goods.setDel(rs.getString("del"));
				
				goodsList.add(goods);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		req.setAttribute("goodsList", goodsList);
		req.getRequestDispatcher("admin/goods/goodsMana.jsp").forward(req, res);
	}
	
	public void goodsDetailHou(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		int id=Integer.parseInt(req.getParameter("id"));
		
		req.setAttribute("goods", liuService.getGoods(id));
		req.getRequestDispatcher("admin/goods/goodsDetailHou.jsp").forward(req, res);
	}
	
	public void goodsAll(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		List goodsList=new ArrayList();
		String sql="select * from t_goods where del='no' order by shifoutejia";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Tgoods goods=new Tgoods();
				
				goods.setId(rs.getInt("id"));
				goods.setCatelog_id(rs.getInt("catelog_id"));
				goods.setBianhao(rs.getString("bianhao"));
				
				goods.setMingcheng(rs.getString("mingcheng"));
				goods.setJieshao(rs.getString("jieshao"));
				goods.setFujian(rs.getString("fujian"));
				
				goods.setShichangjia(rs.getInt("shichangjia"));
				goods.setTejia(rs.getInt("tejia"));
				goods.setShifoutejia(rs.getString("shifoutejia"));
				goods.setKucun(rs.getInt("kucun"));
				goods.setDel(rs.getString("del"));
				
				goodsList.add(goods);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		req.setAttribute("goodsList", goodsList);
		req.getRequestDispatcher("qiantai/goods/goodsAll.jsp").forward(req, res);
	}
	
	
	public void goodsByCatelog(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		int catelog_id=Integer.parseInt(req.getParameter("catelog_id"));
		
		req.setAttribute("goodsList", liuService.goodsByCatelog(catelog_id));
		req.getRequestDispatcher("qiantai/goods/goodsAll.jsp").forward(req, res);
	}
	
	public void goodsDetailQian(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		int id=Integer.parseInt(req.getParameter("id"));
		
		req.setAttribute("goods", liuService.getGoods(id));
		req.getRequestDispatcher("qiantai/goods/goodsDetailQian.jsp").forward(req, res);
	}
	
	
	public void goods_search(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		String mingcheng=req.getParameter("mingcheng");
		
		List goodsList=new ArrayList();
		String sql="select * from t_goods where del='no' and mingcheng like '%"+mingcheng+"%'";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Tgoods goods=new Tgoods();
				
				goods.setId(rs.getInt("id"));
				goods.setCatelog_id(rs.getInt("catelog_id"));
				goods.setBianhao(rs.getString("bianhao"));
				
				goods.setMingcheng(rs.getString("mingcheng"));
				goods.setJieshao(rs.getString("jieshao"));
				goods.setFujian(rs.getString("fujian"));
				
				goods.setShichangjia(rs.getInt("shichangjia"));
				goods.setTejia(rs.getInt("tejia"));
				goods.setShifoutejia(rs.getString("shifoutejia"));
				goods.setKucun(rs.getInt("kucun"));
				goods.setDel(rs.getString("del"));
				
				goodsList.add(goods);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		req.setAttribute("goodsList", goodsList);
		req.getRequestDispatcher("qiantai/goods/goodsAll.jsp").forward(req, res);
	}
	
	public void dispatch(String targetURI,HttpServletRequest request,HttpServletResponse response) 
	{
		RequestDispatcher dispatch = getServletContext().getRequestDispatcher(targetURI);
		try 
		{
		    dispatch.forward(request, response);
		    return;
		} 
		catch (ServletException e) 
		{
                    e.printStackTrace();
		} 
		catch (IOException e) 
		{
			
		    e.printStackTrace();
		}
	}

}
