package com.pizza.dao;

import java.util.List;

import com.pizza.model.KidsSpecial;

public interface KidsSpecialDAO 
{
	public void addKidsSpecial(KidsSpecial kidsSpecial);
	public void updateKidsSpecial(KidsSpecial kidsSpecial);
	public List<KidsSpecial> listKidsSpecial();
	public KidsSpecial getKidsSpecialById(int kidsSpecialId);
	public void removeKidsSpecial(int kidsSpecialId);
}
