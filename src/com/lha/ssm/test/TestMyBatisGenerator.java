package com.lha.ssm.test;

import org.mybatis.generator.api.MyBatisGenerator;
import org.mybatis.generator.api.ShellCallback;
import org.mybatis.generator.config.Configuration;
import org.mybatis.generator.config.xml.ConfigurationParser;
import org.mybatis.generator.internal.DefaultShellCallback;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class TestMyBatisGenerator {
    public static void main(String[] args) throws Exception {
        // warnings Ϊ���ڷ������ɹ����о�����Ϣ�ļ��϶���
        List<String> warnings = new ArrayList<String>();
        // ָ���Ƿ񸲸������ļ�
        boolean overwrite = true;
        // ���������ļ�
        File configFile = new File(MyBatisGenerator.class.getClassLoader().getResource("mybatis-generatorConfig.xml").toURI());
        // ���ý�����
        ConfigurationParser cp = new ConfigurationParser(warnings);
        // ���ý�������������ļ������� Configuration ���ö���
        Configuration config = cp.parseConfiguration(configFile);
        // ShellCallback ������δ����ظ��ļ�
        ShellCallback callback = new DefaultShellCallback(overwrite);
        // ���򹤳̶���
        MyBatisGenerator myBatisGenerator = new MyBatisGenerator(config, callback, warnings);
        // ִ�������ļ����ɲ���
        myBatisGenerator.generate(null);
        // ��ӡ��ʾ��Ϣ
        System.out.println("MyBatis ���򹤳�ִ�гɹ���ˢ����Ŀ�鿴�ļ���");
    }
}
