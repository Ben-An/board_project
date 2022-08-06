package article.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import article.dao.ArticleDao;
import article.model.Article;
import jdbc.connection.ConnectionProvider;

public class ListArticleService {

	private ArticleDao articleDao = new ArticleDao();
	private int size = 5;

	public ArticlePage getArticlePage(int pageNum) {
		//try~with~resource : 입출력 객체 자동으로 닫아줌
		//try (Connection conn = ConnectionProvider.getConnection()) {
		//Connection conn =null;
		try{
			Connection conn = ConnectionProvider.getConnection();
			System.out.println("5. " + this.getClass() + " >>>>> dao 갑니");
			int total = articleDao.selectCount(conn);
			System.out.println("7. " + this.getClass() + " total >>>>> " + total);
			System.out.println("8. " + this.getClass() + " dao 다시 갑니다");
			List<Article> content = articleDao.select(
					conn, (pageNum - 1) * size, size);
			System.out.println("9. " + this.getClass() + " >>>> dao 다녀왔네요, 리스트 가지고왔습니다" + content);
			return new ArticlePage(total, pageNum, size, content);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
