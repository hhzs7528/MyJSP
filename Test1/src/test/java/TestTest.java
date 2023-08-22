import com.hh.entity.NewsInfo;
import com.hh.entity.NewsType;
import com.hh.util.MybatisUtil;
import org.junit.Test;

public class TestTest {

    @Test
    public void test() throws Exception {
        for (NewsInfo newsInfo : MybatisUtil.findAll()) {
            System.out.println(newsInfo);
        }
    }

    @Test
    public void test2(){
        NewsType newsByNewsType = MybatisUtil.findNewsByNewsType(1);
        System.out.println(newsByNewsType);
    }

}
