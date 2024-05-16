package Controller;

import Config.ConexionBD;
import Entities.Coleccion;
import java.math.BigDecimal;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Controlador {

    ConexionBD con = new ConexionBD();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();
    int id;
    List datos;

    @RequestMapping("index.htm")
    public ModelAndView Listar() {
        String sql = "select * from colecciones";
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("index");
        return mav;
    }

    @RequestMapping(value = "agregar.htm", method = RequestMethod.GET)
    public ModelAndView Agregar() {
        mav.addObject(new Coleccion());
        mav.setViewName("agregar");
        return mav;
    }

    @RequestMapping(value = "agregar.htm", method = RequestMethod.POST)
    public ModelAndView Agregar(@RequestParam("PrecioTotal") String precioTotalString, Coleccion p) {
        BigDecimal precioTotal = new BigDecimal(precioTotalString);

        String sql = "insert into colecciones(Titulo, Artistas, Genero, PrecioTotal) values (?, ?, ?, ?)";
        this.jdbcTemplate.update(sql, p.getTitulo(), p.getArtistas(), p.getGenero(), precioTotal);
        return new ModelAndView("redirect:/index.htm");
    }

    @RequestMapping(value = "editar.htm", method = RequestMethod.GET)
    public ModelAndView Editar(HttpServletRequest request) {
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "select * from colecciones where Id=?";
        datos = this.jdbcTemplate.queryForList(sql, id);
        mav.addObject("lista", datos);
        mav.setViewName("editar");
        return mav;

    }

    @RequestMapping(value = "editar.htm", method = RequestMethod.POST)
    public ModelAndView Editar(@RequestParam("PrecioTotal") String precioTotalString, Coleccion p) {
        BigDecimal precioTotal = new BigDecimal(precioTotalString);

        String sql = "update colecciones set Titulo=?,Artistas=?,Genero=?,PrecioTotal=? where Id=?";
        this.jdbcTemplate.update(sql, p.getTitulo(), p.getArtistas(), p.getGenero(), precioTotal, id);
        return new ModelAndView("redirect:/index.htm");
    }

    @RequestMapping("delete.htm")
    public ModelAndView Delete(HttpServletRequest request) {
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "delete from colecciones where Id=" + id;
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/index.htm");

    }

}
