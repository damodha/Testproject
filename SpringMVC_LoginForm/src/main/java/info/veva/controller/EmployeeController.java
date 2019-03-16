package info.veva.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import info.veva.modul.Employee;

@Controller
@RequestMapping(path="/employee")
public class EmployeeController {

	@RequestMapping(method=RequestMethod.GET)
	public String displayEmployeeForm(Model model) {
		Employee employee = new Employee();
		model.addAttribute("employee", employee);
		return "login";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String storeEmployeeForm(@Validated Employee employee, Errors errors) {
		
		if(errors.hasErrors()) {
			return "login";
		}
		if(employee.getEno()==null) {
			errors.rejectValue("eno", "error.eno.required", "++++eno");
		}
		if(employee.getFirstName()==null) {
			errors.rejectValue("fname", "error.firstName.required", "++++Fname");
		}
		if(employee.getLastName()==null) {
			errors.rejectValue("lname", "error.lastName.required", "++++Lname");
		}
		return "logindata";
	}
	
}
