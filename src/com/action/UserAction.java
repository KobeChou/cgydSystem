package com.action;

import java.util.List;
import java.util.Map;
import org.apache.struts2.ServletActionContext;
import com.dao.TUserDAO;
import com.model.TUser;
import com.opensymphony.xwork2.ActionSupport;

/**
 * �û���Ϣ����
 * @author Administrator
 *
 */
public class UserAction extends ActionSupport
{
    private int userId;
	private String userName;
	private String userPw;
	private String userRealname;
	
	private String userAddress;
	private String userSex;
	private String userTel;
	private String userEmail;
	
	private String userQq;
	private String fujian;
	private String message;
	private String path;
	
	private TUserDAO userDAO;
	
	
	/**
	 * �û�ע��
	 * @author Administrator
	 *
	 */
	public String userReg()
	{
		TUser user=new TUser();
		
		user.setUserName(userName.trim());
		user.setUserPw(userPw);
		user.setUserAddress(userAddress);
		user.setUserTel(userTel);
		
		user.setUserRealname(userRealname);
		user.setUserEmail(userEmail);
		user.setUserSex(userSex);
		user.setUserQq(userQq);
		
		user.setFujian(fujian.equals("")==true?"/img/none.gif":fujian);
		user.setUserType("��ͨ��Ա");
		user.setUserDel("no");
		
		userDAO.save(user);
		
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "ע��ɹ������¼");
		return "msg";
	}
	
	/**
	 * �û���Ϣ�༭
	 * @author Administrator
	 *
	 */
	public String userEdit()
	{
		TUser user=userDAO.findById(userId);
		
		user.setUserName(userName);
		user.setUserPw(userPw);
		user.setUserAddress(userAddress);
		user.setUserTel(userTel);
		
		user.setUserRealname(userRealname);
		user.setUserEmail(userEmail);
		user.setUserSex(userSex);
		user.setUserQq(userQq);
		user.setFujian(fujian);
		
		userDAO.getHibernateTemplate().update(user);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "�޸ĳɹ�");
		return "msg";
		
	}
	
	
	public String userEditPre()
	{
		TUser user=userDAO.findById(userId);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("user", user);
		return ActionSupport.SUCCESS;
	}
	
	/**
	 * �˳���¼
	 * @author Administrator
	 *
	 */
	public String userLogout()
	{
		Map session= ServletActionContext.getContext().getSession();
		session.remove("user");
		session.remove("userType");
		return ActionSupport.SUCCESS;
	}
	
	
	
	
	
	/**
	 * �û�ɾ��
	 * @author Administrator
	 *
	 */
	public String userDel()
	{
		TUser user=userDAO.findById(userId);
		user.setUserDel("yes");
		userDAO.attachDirty(user);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "�����ɹ�");
		return "msg";
	}
	
	/**
	 * �û�����
	 * @author Administrator
	 *
	 */
	public String userDetail()
	{
		TUser user=userDAO.findById(userId);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("user", user);
		return ActionSupport.SUCCESS;
	}
	
	/**
	 * �û���Ϣ����
	 * @author Administrator
	 *
	 */
	public String userMana()
	{
		String sql = "from TUser where userDel='no' and userType='��ͨ��Ա'";
		List userList=userDAO.getHibernateTemplate().find(sql);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("userList", userList);
		return ActionSupport.SUCCESS;
	}
	
	
	
	public String getUserAddress()
	{
		return userAddress;
	}

	public void setUserAddress(String userAddress)
	{
		this.userAddress = userAddress;
	}

	public String getFujian()
	{
		return fujian;
	}
	public void setFujian(String fujian)
	{
		this.fujian = fujian;
	}
	public String getUserEmail()
	{
		return userEmail;
	}

	public void setUserEmail(String userEmail)
	{
		this.userEmail = userEmail;
	}

	public String getUserQq()
	{
		return userQq;
	}

	public void setUserQq(String userQq)
	{
		this.userQq = userQq;
	}

	public String getUserRealname()
	{
		return userRealname;
	}

	public void setUserRealname(String userRealname)
	{
		this.userRealname = userRealname;
	}

	public String getUserSex()
	{
		return userSex;
	}

	public void setUserSex(String userSex)
	{
		this.userSex = userSex;
	}

	public String getUserTel()
	{
		return userTel;
	}

	public void setUserTel(String userTel)
	{
		this.userTel = userTel;
	}

	public int getUserId()
	{
		return userId;
	}


	public void setUserId(int userId)
	{
		this.userId = userId;
	}


	public String getUserName()
	{
		return userName;
	}

	public void setUserName(String userName)
	{
		this.userName = userName;
	}

	public TUserDAO getUserDAO()
	{
		return userDAO;
	}


	public String getMessage()
	{
		return message;
	}


	public void setMessage(String message)
	{
		this.message = message;
	}


	public String getPath()
	{
		return path;
	}


	public void setPath(String path)
	{
		this.path = path;
	}


	public void setUserDAO(TUserDAO userDAO)
	{
		this.userDAO = userDAO;
	}


	public String getUserPw()
	{
		return userPw;
	}

	public void setUserPw(String userPw)
	{
		this.userPw = userPw;
	}

	
}