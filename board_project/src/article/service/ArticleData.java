package article.service;

import article.model.Article;
import article.model.ArticleContent;

public class ArticleData {

	private Article article;
	private ArticleContent content;
	private ArticleContent fileName;
	private ArticleContent fileRealName;

	public ArticleData(Article article, ArticleContent content) {
		this.article = article;
		this.content = content;
	}

	public Article getArticle() {
		return article;
	}

	public String getContent() {
		return content.getContent();
	}
	
	
	
	
	//----------------------------------
//	private Article article;
//	private ArticleContent content;
//
//	public ArticleData(Article article, ArticleContent content) {
//		this.article = article;
//		this.content = content;
//	}
//
//	public Article getArticle() {
//		return article;
//	}
//
//	public String getContent() {
//		return content.getContent();
//	}

}
