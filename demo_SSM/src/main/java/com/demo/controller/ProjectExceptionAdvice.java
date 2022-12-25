package com.demo.controller;


import com.demo.exception.BusinessException;
import com.demo.exception.SystemException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * 异常处理器，负责处理程序所有的异常
 */
@RestControllerAdvice
public class ProjectExceptionAdvice {

    @ExceptionHandler(BusinessException.class)
    public Result doBusinessException(BusinessException ex){
        return new Result(null, ex.getCode(), ex.getMessage());
    }

    @ExceptionHandler(SystemException.class)
    public Result doSystemException(SystemException ex){
        // 记录日志（错误报告）
        // 发送邮件给开发人员
        // 发送短信给运维人员
        return new Result(null, ex.getCode(), ex.getMessage());
    }

    @ExceptionHandler(Exception.class)
    public Result doException(Exception ex){
        // 记录日志（错误报告）
        // 发送邮件给开发人员
        // 发送短信给运维人员
        System.out.println("hello Exception");
        return new Result(null, Code.SYSTEM_UNKNOW_ERR, "请联系管理员");
    }
}
