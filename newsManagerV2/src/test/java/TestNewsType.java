import com.hh.entity.NewsType;
import com.hh.service.NewsTypeService;
import com.hh.service.impl.NewsTypeServiceImpl;
import com.hh.util.NewsTypeDBUtil;
import org.junit.Test;

public class TestNewsType {
    NewsTypeService service = new NewsTypeServiceImpl();
    @Test
    public void testDel(){
        System.out.println(NewsTypeDBUtil.delNewsTypeById(18));
    }

    @Test
    public void testUpdate(){
        NewsType newsType = new NewsType();
        newsType.setId(16);
        newsType.setNewsType("奇帕");
        System.out.println(service.updateNewsType(newsType));
    }

    @Test
    public void testAdd(){
        NewsType newsType = new NewsType();
        newsType.setNewsType("奇葩");
        System.out.println(service.addNewsType(newsType));
    }
}
