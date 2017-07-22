package com.lirs.bysj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/*
 * 商品管理控制器
 * lirs
 * 2017 7 20
 * */

@Controller
@RequestMapping("/GoodsMannager")
public class GoodsMannager {
	
	@RequestMapping("/goodslist")
	private String GoodsList(){
		return "GoodsMannager/goodslist";
	}
	//商品分类管理
	@RequestMapping("/goodsclassify")
	public String GoodsClassify(){
		return "GoodsMannager/goodsclassify";
	}
	//商品用户评论
	@RequestMapping("/goodcomments")
	public String GoodsComments(){
		return "GoodsMannager/goodscomments";
	}
	//商品回收站
	@RequestMapping("/goodsrecyclebin")
	public String GoodsRecyclebin(){
		return "GoodsMannager/goodsrecylebin";
	}
	//商品库存管理
	@RequestMapping("/goodsstock")
	public String GoodsStock(){
		return "GoodsMannager/goodsstock";
	}
}
