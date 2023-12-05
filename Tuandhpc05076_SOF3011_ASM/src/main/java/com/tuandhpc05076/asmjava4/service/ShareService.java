package com.tuandhpc05076.asmjava4.service;

import com.tuandhpc05076.asmjava4.model.share;

public interface ShareService {
	share create(int userID, int videoID, String email);
}
