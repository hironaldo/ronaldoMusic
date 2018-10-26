import com.cheery.dao.dataInit.IDataInitDao;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import javax.annotation.Resource;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-core.xml")
public class MainTest extends AbstractJUnit4SpringContextTests {
    @Resource
    IDataInitDao initimpl;

    @Test
    public void queryAllMv() throws Exception {
        System.out.println(initimpl.queryAllMv());
    }

    @Test
    public void queryAllPlaylist() throws Exception{
        System.out.println(initimpl.queryAllPlaylist("经典",0,5));
    }

    @Test
    public void queryAllSinger() throws Exception{
        System.out.println(initimpl.queryAllSinger("男","港台","流行",0,5));
    }

}
