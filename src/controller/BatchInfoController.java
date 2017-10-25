package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import service.BatchInfoService;

@Controller
public class BatchInfoController {
    @Autowired
    private BatchInfoService batchInfoService;

    @RequestMapping("/selectAllBatch")
    public String selectAllBatch(Model model) {
        model.addAttribute("allBatchBatch", batchInfoService.selectAllBatch());
        return "BatchInfoList";

    }
}
