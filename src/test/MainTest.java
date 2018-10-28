import com.cheery.dao.dataInit.IDataInitDao;
import com.cheery.dao.playlist.IPlaylistDao;
import com.cheery.model.DetailEntity;
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
    IPlaylistDao playlistDao;

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

    @Test
    public void queryPlaylistById() throws Exception{
        System.out.println(playlistDao.queryDetailById(1));
    }

    @Test
    public void deletePlaylistById() throws Exception{
        DetailEntity deta = new DetailEntity();
        deta.setDeId(28);
        System.out.println(playlistDao.deletePlaylistById(deta));
    }


}
