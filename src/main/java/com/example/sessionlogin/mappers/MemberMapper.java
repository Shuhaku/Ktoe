package com.example.sessionlogin.mappers;import com.example.sessionlogin.models.Member;import org.apache.ibatis.annotations.Mapper;@Mapperpublic interface MemberMapper {    int insertMember(Member member);}