/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fintech.dao;

import com.fintech.model.Comment;
import com.fintech.model.Post;
import com.fintech.model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

/**
 *
 * @author Kolade
 */
public class PostsDAO {

    private JdbcTemplate jdbcTemplateObject;

    private DataSource dataSource;

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
        this.jdbcTemplateObject = new JdbcTemplate(dataSource);
    }

    public void setTemplate(JdbcTemplate jdbcTemplateObject) {
        this.jdbcTemplateObject = jdbcTemplateObject;
    }

    public int createPost(final Post post) {


        final PreparedStatementCreator psc = new PreparedStatementCreator() {
            @Override
            public PreparedStatement createPreparedStatement(final Connection connection) throws SQLException {
                final PreparedStatement ps = connection.prepareStatement("INSERT INTO posts (subject, body) values (?,?)",
                        Statement.RETURN_GENERATED_KEYS);
                ps.setString(1, post.getSubject());
                ps.setString(2, post.getBody());
                return ps;
            }

        };

        final KeyHolder holder = new GeneratedKeyHolder();

        jdbcTemplateObject.update(psc, holder);

        final int newNameId = holder.getKey().intValue();
        return newNameId;
    }

    
    
    
    public void createComment(final Comment comment, final int id) {
        
        final PreparedStatementCreator psc = new PreparedStatementCreator() {
            @Override
            public PreparedStatement createPreparedStatement(final Connection connection) throws SQLException {
                final PreparedStatement ps = connection.prepareStatement("INSERT INTO comments (commentbody, postid) values (?,?)",
                        Statement.RETURN_GENERATED_KEYS);
                ps.setString(1, comment.getComment());
                ps.setInt(2, id);
                return ps;
            }
           
        };
        
        
         final KeyHolder holder = new GeneratedKeyHolder();

        jdbcTemplateObject.update(psc, holder);
    }
    
    
    
    
    
     public void createUser(final User user) {
        
        final PreparedStatementCreator psc = new PreparedStatementCreator() {
            @Override
            public PreparedStatement createPreparedStatement(final Connection connection) throws SQLException {
                final PreparedStatement ps = connection.prepareStatement("INSERT INTO users (username, password, email) values (?,?,?)",
                        Statement.RETURN_GENERATED_KEYS);
                ps.setString(1, user.getUsername());
                ps.setString(2, user.getPassword());
                ps.setString(3, user.getEmail());
                return ps;
            }
           
        };
        
        
         final KeyHolder holder = new GeneratedKeyHolder();

        jdbcTemplateObject.update(psc, holder);
    }
    
    
   

    public Post viewPost(int id) {

        String sql = "Select subject, body from posts where id = ?";
        return jdbcTemplateObject.queryForObject(sql, new Object[]{id}, new RowMapper<Post>() {
            @Override
            public Post mapRow(ResultSet rs, int row) throws SQLException {
                Post post = new Post();
                post.setSubject(rs.getString("subject"));
                post.setBody(rs.getString("body"));

                return post;
            }
        });
    }

    
        public List<Comment> viewComments(long id) {
        List<Comment> comments = new ArrayList<>();
        String sql = "Select commentBody from comments where postId = ?";
        comments = jdbcTemplateObject.query(sql, new Object[]{id}, new RowMapper<Comment>() {
            @Override
            public Comment mapRow(ResultSet rs, int row) throws SQLException {
                Comment comment = new Comment();
                comment.setComment(rs.getString("commentBody"));
                return comment;
            }
        });
        
        return comments;
    }
        
        public User getUser(final User user){
            String sql = "SELECT * FROM users where username = ?";
             try{ 
        return jdbcTemplateObject.queryForObject(sql, new Object[]{user.getUsername()}, new RowMapper<User>() {
           
            @Override
            public User mapRow(ResultSet rs, int row) throws SQLException {
                 User dbUser = null;
                
               dbUser = new User();
               dbUser.setUsername(rs.getString("username"));
               dbUser.setPassword(rs.getString("password"));
               
               
                return dbUser;
                
                
            }
        }); 
             }catch(EmptyResultDataAccessException ex){
                    return null;
                     }
        }
    
}
