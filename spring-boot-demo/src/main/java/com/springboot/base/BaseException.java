package com.springboot.base;

/**
 * 通用Exception
 *
 * @author wangjitao
 * @date 2017-07-19
 */
public class BaseException extends RuntimeException
{
    protected String key;
    protected Object[] args;
    /**
     *
     * @param key 异常提示信息
     */
    public BaseException(String key)
    {
        super(key);
        this.key = key;
    }
    /**
     *
     * @param key 异常提示信息
     * @param cause 异常对象
     */
    public BaseException(String key, Throwable cause)
    {
        super(key, cause);
        this.key = key;
    }
    /**
     *
     * @param key 异常提示信息
     * @param args 在抛异常时把某些数据也抛给异常处理者
     */
    public BaseException(String key, Object ... args)
    {
        super(key);
        this.key = key;
        this.args = args;
    }
    /**
     *
     * @param key 异常提示信息
     * @param cause 异常对象
     * @param args 在抛异常时把某些数据也抛给异常处理者
     */
    public BaseException(String key, Throwable cause, Object ... args)
    {
        super(key, cause);
        this.key = key;
        this.args = args;
    }


    public String getKey()
    {
        return key;
    }

    public Object[] getArgs()
    {
        return args;
    }
}
