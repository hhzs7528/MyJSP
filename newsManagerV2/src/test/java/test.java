import com.hh.dao.NewsDao;
import com.hh.dao.NewsTypeDao;
import com.hh.dao.impl.NewsDaoImpl;
import com.hh.dao.impl.NewsTypeDaoImpl;
import com.hh.entity.News;
import com.hh.entity.NewsType;
import com.hh.service.NewsService;
import com.hh.service.impl.NewsServiceImpl;
import com.hh.util.NewsDBUtil;
import org.junit.Test;

import java.util.List;

public class test {
    @Test
    public void test1() {
        NewsDao dao = new NewsDaoImpl();
        List<News> newsInfo = dao.getNewsInfo();
        for (News news : newsInfo) {
            System.out.println(news);
        }
    }

    @Test
    public void testNewsTypes() {
        NewsTypeDao dao = new NewsTypeDaoImpl();
        for (NewsType newsType : dao.getNewsTypes()) {
            System.out.println(newsType);
        }
    }

    @Test
    public void testAddNews(){
        News news = new News();
        news.setNewsTitle("姚振华，被打了");
        news.setNewsTime("2023-08-02 00:03");
        news.setNewsContent("没想到当年拳打万科，脚踢格力的野蛮人姚振华老师，前阵子被保安拦住，如今在路上又被讨薪的员工摁在地上打，真的是唏嘘。");
        news.setNewsType("社会");
        NewsDBUtil.addNews(news);
    }

    @Test
    public void testUpdateNews(){
        News news = new News();
        news.setId(7);
        news.setNewsTitle("众志成城 抢险救援");
        news.setNewsTime("2023-08-01 10:08:00");
        news.setNewsContent("连日来，北京、天津、河北等地部分地区出现暴雨到大暴雨，部分地区出现特大暴雨。受降雨影响，海河流域发生流域性较大洪水。为保障人民群众生命财产安全，多地多部门启动应急响应，调动人力物力，众志成城，开展防汛救灾工作。");
        news.setNewsType("国内");
        boolean b = NewsDBUtil.updateNews(news);
        System.out.println(b);
    }

    @Test
    public void testGetNewsById(){
        News news = NewsDBUtil.getNewsById(1);
        System.out.println(news);
    }

    @Test
    public void testDelNews(){
        NewsService service = new NewsServiceImpl();
        boolean b = service.delNewsById(9);
        System.out.println(b);
    }

    @Test
    public void testGetNewsByType(){
        NewsService service = new NewsServiceImpl();
        for (News news : service.getNewsByType(1)) {
            System.out.println(news);
        }

    }
}
