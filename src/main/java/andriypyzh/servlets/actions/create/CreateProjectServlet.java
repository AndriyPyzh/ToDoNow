package andriypyzh.servlets.actions.create;

import andriypyzh.entity.Project;
import andriypyzh.entity.User;
import andriypyzh.services.ProjectService;
import andriypyzh.services.validators.ProjectValidator;
import org.apache.log4j.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/CreateProject")
public class CreateProjectServlet extends HttpServlet {
    Logger logger = Logger.getLogger(CreateProjectServlet.class);

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        try {
            String projectName = request.getParameter("Name");
            java.sql.Date deadline = java.sql.Date.valueOf(request.getParameter("Deadline"));
            String description = request.getParameter("Description");
            String type = request.getParameter("Type");

            User user = (User) session.getAttribute("user");
            ProjectService projectService = new ProjectService();
            projectService.createProject(projectName, user,
                    deadline, description, type);

            ProjectValidator projectValidator = new ProjectValidator();
            projectValidator.validateData(projectName, deadline, type, description);

            logger.info("/Projects?project=" + projectName);
            session.setAttribute("section", projectName);

            List<Project> projects = projectService.getAllUsersProjects(user);
            session.setAttribute("projects", projects);

            RequestDispatcher requestDispatcher =
                    request.getRequestDispatcher("/Projects?project=" + projectName);
            requestDispatcher.forward(request, response);

        } catch (IllegalArgumentException e) {
            request.setAttribute("error", e.getMessage());
            logger.error("illegal data", e);

            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/forms/createproject.jsp");
            requestDispatcher.forward(request, response);
        }
    }
}
