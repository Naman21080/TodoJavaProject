package com.todoproject.TodoAnudip;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class loginController {
     
	@Autowired
	ItodoRepository it;
	
	@RequestMapping("login")
	public String login() 
	{
		return "Login.jsp";
	}
	
	@RequestMapping("home")
	public String logindb(String username,String pass) 
	{
		if(username.equals("admin")&& pass.equals("admin")) 
		{
			return "Home.jsp";	
		}
		else 
		{
			return "Login.jsp";
		}			
	}
	
	@RequestMapping("welcome")
	public String welcome() 
	{
		return "Home.jsp";
	}
	
	@RequestMapping("add")
	public String add()
	{
		return "Add.jsp";
	}

	
	@RequestMapping("logout")
	public String logout()
	{
		return "Logout.jsp";
	}
	
	
	@RequestMapping("addRecord")
	public String addRecord(String description,Date target_date) 
	{
		todo td=new todo();
		
		td.setDescription(description);
		td.setTarget_date(target_date);
		it.save(td);
		
		return "redirect:/todos";
	}
	

	@RequestMapping("todos")
	public ModelAndView todos(ModelMap mp)
	{
		mp.put("object",it.findAll());
		ModelAndView mv=new ModelAndView();
		mv.addAllObjects(mp);
		mv.setViewName("Todos.jsp");
		return mv;
	}
	
	@RequestMapping("delete")
	public String delete(int id)
	{
		it.deleteById(id);
		return "todos";
	}
	
	@RequestMapping("update")
	public String update(int id,ModelMap mp)
	{
		todo t1 = it.findById(id).get();
		mp.put("object", t1);
		
		return "Update.jsp";
		
	}
	
	@RequestMapping("updateInTodos")
	public String updateInTodos(int id,String description,Date target_date) {
		
		todo t1=it.findById(id).get();
		
		t1.setId(id);
		t1.setDescription(description);
		t1.setTarget_date(target_date);
		
		it.save(t1);
		
		return "redirect:/todos";
	}

}
