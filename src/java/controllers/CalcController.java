package controllers;

import javax.validation.Valid;
import models.Calculator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import services.CalcService;

/**
 *
 * @author JESSI
 */
@Controller
@RequestMapping("/calc.htm") 
public class CalcController {

    @RequestMapping(method=RequestMethod.GET)
    public String awal() {
        return "calc";
    }
    
    @RequestMapping(value ="/calc.htm", method = RequestMethod.GET)
    public ModelAndView showForm() {
        return new ModelAndView("calc", "calculator", new Calculator());
    }
 
    @RequestMapping(value = "/calc.htm", method = RequestMethod.POST)
    public String submit(@Valid @ModelAttribute("calculator")Calculator calculator, 
      BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            return "error";
        }
        model.addAttribute("angka1", calculator.getAngka1());
        model.addAttribute("angka2", calculator.getAngka2());
        return "calc";
    }
    
}