/**
 * IgdLtrmGdRtInfo Entity Controller 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.repository;

// import org.springframework.data.domain.Page;
// import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
// import org.springframework.data.jpa.repository.Query;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.skims.domain.entity.IgdLtrmGdRtInfo;
import com.skims.domain.entity.IgdLtrmGdRtInfoPK;

@RepositoryRestResource
public interface IgdLtrmGdRtInfoRepository extends JpaRepository<IgdLtrmGdRtInfo, IgdLtrmGdRtInfoPK> {
	// JPQL SAMPLE
	// @Query("select new  com.sample.dto.TestUser(m.username, m.address, m.age) from User m")
    // Page<TestUser>test(Pageable pageable);
}
