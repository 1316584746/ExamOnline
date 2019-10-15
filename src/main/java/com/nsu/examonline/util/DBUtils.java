package com.nsu.examonline.util;

import java.lang.reflect.Field;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * 用于执行jdbc操作的工具类
 */
public class DBUtils {

    // 封装的工具类, 要先执行连接数据库的操作


    private static Connection connection;

    // 使用静态语句块进行数据库连接的初始化操作
    static {
        String url = "jdbc:mysql://localhost:3306/examonline?characterEncoding=UTF-8&useSSL=false";
        // 配置连接数据库的用户名
        String username = "root";
        // 配置连接数据库的用户密码
        String password = "";
        try {
            connection = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static List<Object> selectAll(String className) throws ClassNotFoundException {

        // 声明一个List , 类型为Object
        List<Object> objects = new ArrayList<>();

        // 通过User字符串名称,反射得到对应的Class
        String packageName = "com.nsu.examonline.pojo.";

        // 反射的第一步操作: 得到Class对象
        Class<?> aClass = Class.forName(packageName + className);
        //通过class对象获取所有的字段
        Field[] declaredFields = aClass.getDeclaredFields();

        // 动态生成要执行的sql
        // String sql = "SELECT sid,sname FROM students";
        StringBuilder sqlString = new StringBuilder("SELECT ");
        //遍历所有的字段名
        for (Field declaredField : declaredFields) {
            // System.out.println(declaredField.getName());
            // 把遍历得到的字段名追加到目标sql字符串对象上
            sqlString.append(declaredField.getName() + ",");
        }
        sqlString.deleteCharAt(sqlString.length() - 1);
        sqlString.append(" FROM " + className + "s");
        // System.out.println(sqlString);
        // 获得了完整的select类型的sql
        // 接下来, 利用JDBC执行查询操作
        try {
            // 将StringBuilder转换为String
            PreparedStatement preparedStatement = connection.prepareStatement(sqlString.toString());

            // 返回结果集对象
            ResultSet resultSet = preparedStatement.executeQuery();
            // 通过结果集对象获取游标状态
            // 使用next方法向前滚动, 每次访问一行数据前都必须执行next方法
            while (resultSet.next()) {
                // 其中obj也要通过反射来创建实例(new 克隆 反射 三种方式)
                //通过Class的实例调用newInstance方法得到反射对象的实例, 必须是Object
                // 反射实例化对象时,调用的是无参构造方法
                Object o = aClass.newInstance();  //作用相当于 User user  = new User();

                for (Field declaredField : declaredFields) {
                    // 注意: 结果集对象在获取时, 应该用对应的类型: getInt getString
                    // 在封装方法中,需要更通用的方法 : getString getObject
                    //  String作为一种万能类型,所有类型的值都可以用它获取
                    // Object: 对象类型,包括所有内容

                    // 还需要利用反射得到的字段进行赋值
                    //  declaredField.set(obj , value);
                    // obj: 要给哪一个对象赋值
                    // value: 赋什么值

                    // 暴力访问: 可以访问private成员
                    declaredField.setAccessible(true);

                    //利用反射得到的字段,向反射得到的对象上进行字段的传值
                    declaredField.set(o, resultSet.getObject(declaredField.getName()));
                }
                // 将反射得到的,并且得到所有字段的值的对象添加到集合中
                objects.add(o);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InstantiationException e) {
            e.printStackTrace();
        }

        // System.out.println(objects);
        return objects;
    }

    // 利用泛型改造
    // 在 静态方法上利用<T> 声明了一个不确定的类型: 泛型
    // 将来,传递一个T类型的Class进来, 就能得到对应的T类型的List     selectAll2(User) ->  List<User>
    public static <T> List<T> selectAll2selectAll2(Class<T> aClass) throws ClassNotFoundException {

        // 声明一个List , 类型为Object
        List<T> objects = new ArrayList<>();

        // 通过User字符串名称,反射得到对应的Class
     //   String packageName = "com.gxa.p2p.pojo.";

        // 反射的第一步操作: 得到Class对象
    //    Class<?> aClass = Class.forName(packageName + className);
        //通过class对象获取所有的字段
        Field[] declaredFields = aClass.getDeclaredFields();

        // 动态生成要执行的sql
        // String sql = "SELECT sid,sname FROM students";
        StringBuilder sqlString = new StringBuilder("SELECT ");
        //遍历所有的字段名
        for (Field declaredField : declaredFields) {
            // System.out.println(declaredField.getName());
            // 把遍历得到的字段名追加到目标sql字符串对象上
            sqlString.append(declaredField.getName() + ",");
        }
        sqlString.deleteCharAt(sqlString.length() - 1);

        sqlString.append(" FROM " + aClass.getSimpleName() + "s");

        // System.out.println(sqlString);
        // 获得了完整的select类型的sql
        // 接下来, 利用JDBC执行查询操作
        try {
            // 将StringBuilder转换为String
            PreparedStatement preparedStatement = connection.prepareStatement(sqlString.toString());

            // 返回结果集对象
            ResultSet resultSet = preparedStatement.executeQuery();
            // 通过结果集对象获取游标状态
            // 使用next方法向前滚动, 每次访问一行数据前都必须执行next方法
            while (resultSet.next()) {
                // 其中obj也要通过反射来创建实例(new 克隆 反射 三种方式)
                //通过Class的实例调用newInstance方法得到反射对象的实例, 必须是Object
                // 反射实例化对象时,调用的是无参构造方法
                Object o = aClass.newInstance();  //作用相当于 User user  = new User();

                for (Field declaredField : declaredFields) {
                    // 注意: 结果集对象在获取时, 应该用对应的类型: getInt getString
                    // 在封装方法中,需要更通用的方法 : getString getObject
                    //  String作为一种万能类型,所有类型的值都可以用它获取
                    // Object: 对象类型,包括所有内容

                    // 还需要利用反射得到的字段进行赋值
                    //  declaredField.set(obj , value);
                    // obj: 要给哪一个对象赋值
                    // value: 赋什么值

                    // 暴力访问: 可以访问private成员
                    declaredField.setAccessible(true);

                    //利用反射得到的字段,向反射得到的对象上进行字段的传值
                    declaredField.set(o, resultSet.getObject(declaredField.getName()));
                }
                // 将反射得到的,并且得到所有字段的值的对象添加到集合中
                objects.add((T)o);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InstantiationException e) {
            e.printStackTrace();
        }

        // System.out.println(objects);
        return objects;
    }

}
