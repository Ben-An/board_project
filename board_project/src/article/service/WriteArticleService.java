package article.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;

import article.dao.ArticleContentDao;
import article.dao.ArticleDao;
import article.model.Article;
import article.model.ArticleContent;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;

public class WriteArticleService {

	private ArticleDao articleDao = new ArticleDao();
	private ArticleContentDao contentDao = new ArticleContentDao();

	public Integer write(WriteRequest req) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);

			Article article = toArticle(req);
			//Article savedArticle = articleDao.insert(conn, article);
			System.out.println("5. service >>> insert");
			int result = articleDao.insert(conn, article);
			System.out.println("7. service >>> insert_result >>> " + result);
			//if (savedArticle == null) {
				if (result == 0) {
				throw new RuntimeException("fail to insert article");
			}
			ArticleContent content = new ArticleContent(
					//savedArticle.getNumber(),
					result,
					req.getContent());
			System.out.println("8. service >>> insert");
			ArticleContent savedContent = contentDao.insert(conn, content);
			System.out.println("10. service >>> insert_savedContent >>> " + savedContent);
			if (savedContent == null) {
				throw new RuntimeException("fail to insert article_content");
			}

			conn.commit();

			//return savedArticle.getNumber();
			return result;
		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} catch (RuntimeException e) {
			JdbcUtil.rollback(conn);
			throw e;
		} finally {
			JdbcUtil.close(conn);
		}
	}

	private Article toArticle(WriteRequest req) {
		Date now = new Date();
		return new Article(null, req.getWriter(), req.getTitle(), now, now, 0);
	}
	
	
	
	
	
	
	
	
	
//------------------------------------------------------------------------------------------------------
	
	
	
	
	
//	private ArticleDao articleDao = new ArticleDao();
//	private ArticleContentDao contentDao = new ArticleContentDao();
//
//	public Integer write(WriteRequest req) {
//		Connection conn = null;
//		try {
//			conn = ConnectionProvider.getConnection();
//			conn.setAutoCommit(false);
//
//			Article article = toArticle(req);
//			//Article savedArticle = articleDao.insert(conn, article);
//			System.out.println("5. service >>> insert");
//			int result = articleDao.insert(conn, article);
//			System.out.println("7. service >>> insert_result >>> " + result);
//			//if (savedArticle == null) {
//				if (result == 0) {
//				throw new RuntimeException("fail to insert article");
//			}
//			ArticleContent content = new ArticleContent(
//					//savedArticle.getNumber(),
//					result,
//					req.getContent());
//			System.out.println("8. service >>> insert");
//			ArticleContent savedContent = contentDao.insert(conn, content);
//			System.out.println("10. service >>> insert_savedContent >>> " + savedContent);
//			if (savedContent == null) {
//				throw new RuntimeException("fail to insert article_content");
//			}
//
//			conn.commit();
//
//			//return savedArticle.getNumber();
//			return result;
//		} catch (SQLException e) {
//			JdbcUtil.rollback(conn);
//			throw new RuntimeException(e);
//		} catch (RuntimeException e) {
//			JdbcUtil.rollback(conn);
//			throw e;
//		} finally {
//			JdbcUtil.close(conn);
//		}
//	}
//
//	private Article toArticle(WriteRequest req) {
//		Date now = new Date();
//		return new Article(null, req.getWriter(), req.getTitle(), now, now, 0);
//	}
//	
	
}
