package com.model;

/**
 * TZlxx generated by MyEclipse Persistence Tools
 */

public class TZlxx implements java.io.Serializable
{

	private Integer id;
	private Integer qch_id;
	private String kehuming;
	private String kehuzheng;

	private String rushijian;
	private String lishijian;
	private Integer feiyong;
	
	private TQch qch;
	
	public Integer getFeiyong()
	{
		return feiyong;
	}
	public void setFeiyong(Integer feiyong)
	{
		this.feiyong = feiyong;
	}
	public Integer getId()
	{
		return id;
	}
	public void setId(Integer id)
	{
		this.id = id;
	}
	public Integer getQch_id()
	{
		return qch_id;
	}
	public void setQch_id(Integer qch_id)
	{
		this.qch_id = qch_id;
	}
	public String getKehuming()
	{
		return kehuming;
	}
	public void setKehuming(String kehuming)
	{
		this.kehuming = kehuming;
	}
	
	public TQch getQch()
	{
		return qch;
	}
	public void setQch(TQch qch)
	{
		this.qch = qch;
	}
	public String getKehuzheng()
	{
		return kehuzheng;
	}
	public void setKehuzheng(String kehuzheng)
	{
		this.kehuzheng = kehuzheng;
	}
	public String getLishijian()
	{
		return lishijian;
	}
	public void setLishijian(String lishijian)
	{
		this.lishijian = lishijian;
	}
	public String getRushijian()
	{
		return rushijian;
	}
	public void setRushijian(String rushijian)
	{
		this.rushijian = rushijian;
	}

}