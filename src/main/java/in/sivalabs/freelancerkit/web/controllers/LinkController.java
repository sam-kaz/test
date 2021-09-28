package in.sivalabs.freelancerkit.web.controllers;

import in.sivalabs.freelancerkit.entities.Link;
import in.sivalabs.freelancerkit.repositories.LinkRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api")
public class LinkController {

    private LinkRepository linkRepository;

    @Autowired
    public LinkController(LinkRepository linkRepository) {
        this.linkRepository = linkRepository;
    }

    @GetMapping("/links")
    public List<Link> allLinks() {
        Sort sort = Sort.by(Sort.Direction.DESC, "createdOn");
        return linkRepository.findAll(sort);
    }
}
