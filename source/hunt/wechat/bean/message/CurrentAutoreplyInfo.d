module hunt.wechat.bean.message.CurrentAutoreplyInfo;

import hunt.collection.List;
import hunt.collection.Map;

import hunt.wechat.bean.BaseResult;

class CurrentAutoreplyInfo : BaseResult{

	private Integer is_add_friend_reply_open;
	
	private Integer is_autoreply_open;
	
	private Map!(string,string) add_friend_autoreply_info;
	
	private Map!(string,string) message_default_autoreply_info;
	
	private Keyword_autoreply_info keyword_autoreply_info;
	
	static class Keyword_autoreply_info{
		
		private List!(Keyword_reply) list;
		
		static class Keyword_reply{
			
			private string rule_name;
			
			private Integer create_time;
			
			private string reply_mode;
			
			private List!(Keyword_list_info) keyword_list_info;
			
			private List!(Reply_list_info) reply_list_info;
			
			static class Keyword_list_info{
				
				private string type;
				
				private string match_mode;
				
				private string content;

				public string getType() {
					return type;
				}

				public void setType(string type) {
					this.type = type;
				}

				public string getMatch_mode() {
					return match_mode;
				}

				public void setMatch_mode(string match_mode) {
					this.match_mode = match_mode;
				}

				public string getContent() {
					return content;
				}

				public void setContent(string content) {
					this.content = content;
				}
				
			}
			
			static class Reply_list_info{
				private string type;
				
				private string content;
				
				private News_info_list news_info;
				
				static class News_info_list{
					private List!(News_info) list;
					
					static class News_info{
						
						private string title;
						
						private string author;
						
						private string digest;
						
						private Integer show_cover;
						
						private string cover_url;

						private string content_url;
						
						private string source_url;

						public string getTitle() {
							return title;
						}

						public void setTitle(string title) {
							this.title = title;
						}

						public string getAuthor() {
							return author;
						}

						public void setAuthor(string author) {
							this.author = author;
						}

						public string getDigest() {
							return digest;
						}

						public void setDigest(string digest) {
							this.digest = digest;
						}

						public Integer getShow_cover() {
							return show_cover;
						}

						public void setShow_cover(Integer show_cover) {
							this.show_cover = show_cover;
						}

						public string getCover_url() {
							return cover_url;
						}

						public void setCover_url(string cover_url) {
							this.cover_url = cover_url;
						}

						public string getContent_url() {
							return content_url;
						}

						public void setContent_url(string content_url) {
							this.content_url = content_url;
						}

						public string getSource_url() {
							return source_url;
						}

						public void setSource_url(string source_url) {
							this.source_url = source_url;
						}
						
					}

					public List!(News_info) getList() {
						return list;
					}

					public void setList(List!(News_info) list) {
						this.list = list;
					}
					
					
				}

				public string getType() {
					return type;
				}

				public void setType(string type) {
					this.type = type;
				}

				public string getContent() {
					return content;
				}

				public void setContent(string content) {
					this.content = content;
				}

				public News_info_list getNews_info() {
					return news_info;
				}

				public void setNews_info(News_info_list news_info) {
					this.news_info = news_info;
				}
				
				
			}

			public string getRule_name() {
				return rule_name;
			}

			public void setRule_name(string rule_name) {
				this.rule_name = rule_name;
			}

			public Integer getCreate_time() {
				return create_time;
			}

			public void setCreate_time(Integer create_time) {
				this.create_time = create_time;
			}

			public string getReply_mode() {
				return reply_mode;
			}

			public void setReply_mode(string reply_mode) {
				this.reply_mode = reply_mode;
			}

			public List!(Keyword_list_info) getKeyword_list_info() {
				return keyword_list_info;
			}

			public void setKeyword_list_info(List!(Keyword_list_info) keyword_list_info) {
				this.keyword_list_info = keyword_list_info;
			}

			public List!(Reply_list_info) getReply_list_info() {
				return reply_list_info;
			}

			public void setReply_list_info(List!(Reply_list_info) reply_list_info) {
				this.reply_list_info = reply_list_info;
			}
			
			
		}

		public List!(Keyword_reply) getList() {
			return list;
		}

		public void setList(List!(Keyword_reply) list) {
			this.list = list;
		}
		
	}

	public Integer getIs_add_friend_reply_open() {
		return is_add_friend_reply_open;
	}

	public void setIs_add_friend_reply_open(Integer is_add_friend_reply_open) {
		this.is_add_friend_reply_open = is_add_friend_reply_open;
	}

	public Integer getIs_autoreply_open() {
		return is_autoreply_open;
	}

	public void setIs_autoreply_open(Integer is_autoreply_open) {
		this.is_autoreply_open = is_autoreply_open;
	}

	public Map!(string, string) getAdd_friend_autoreply_info() {
		return add_friend_autoreply_info;
	}

	public void setAdd_friend_autoreply_info(
			Map!(string, string) add_friend_autoreply_info) {
		this.add_friend_autoreply_info = add_friend_autoreply_info;
	}

	public Map!(string, string) getMessage_default_autoreply_info() {
		return message_default_autoreply_info;
	}

	public void setMessage_default_autoreply_info(
			Map!(string, string) message_default_autoreply_info) {
		this.message_default_autoreply_info = message_default_autoreply_info;
	}

	public Keyword_autoreply_info getKeyword_autoreply_info() {
		return keyword_autoreply_info;
	}

	public void setKeyword_autoreply_info(
			Keyword_autoreply_info keyword_autoreply_info) {
		this.keyword_autoreply_info = keyword_autoreply_info;
	}
	
	
}
