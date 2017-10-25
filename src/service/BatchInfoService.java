package service;
import entities.Batch_information;
import mapper.BatchInfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BatchInfoService {
    @Autowired
    private BatchInfoMapper batchInfoMapper;
    public List<Batch_information> selectAllBatch(){
        List<Batch_information> batchs= batchInfoMapper.selectAllInfo();
        /*Batch_information是类型，b是变量名，batchs是所有新菜谱*/
        for (Batch_information b:batchs){
            /*将日期获取出来*/
            String date =b.getStarttime();
            String date1=b.getEndtime();
            /*截取值*/
            date = date.substring(0,19);
            date1 = date1.substring(0,19);
            /*将截取的值添加到日期*/
            b.setStarttime(date);
            b.setEndtime(date1);
        }
        return  batchs;

    }

}
