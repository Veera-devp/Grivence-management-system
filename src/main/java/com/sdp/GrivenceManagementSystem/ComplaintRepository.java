package com.sdp.GrivenceManagementSystem;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ComplaintRepository extends JpaRepository<ComplaintDetails,String>
{
	
}
