package com.propertytax.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.propertytax.models.FormData;

@Repository
public interface FormRepo extends JpaRepository<FormData,Long> {
	
	@Query(value="SELECT sum(f.total) from form_data f where f.zone=:one and f.status=:two", nativeQuery=true)
	double sumTotal(@Param("one") char zone,@Param("two") String status);

}
