package com.ezen.board;

import java.util.ArrayList;

import com.ezen.eure.PageDTO;

public interface NoticeService {


	void hostboardinsert(String ntitle, String ncontent, String id);
	ArrayList<NoticeDTO> boardout();
}
