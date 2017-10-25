package mapper;

import entities.Batch_information;

import java.util.List;

public interface BatchInfoMapper {
    List<Batch_information> selectAllInfo();
}
