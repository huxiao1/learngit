git lancasnlj
1 先下载git for windows
然后一直点下一步安装.
2 安装之后，选择git gui.生成ssh 链接 git 公钥.
用命令也可以：
$ ssh-keygen -t rsa -C "your_emali@youemal.com"
然后输入密码.
建议用第一种方式。第二种网上说是可以，但是我没成功过。
然后输入密码。
3 将公钥添加到开源中国上，或者是github中
在开源中国中新建一个公钥，然后将.ssh文件夹下的id_ras_pub中的内容复制到文本框中，这里的title可以随意.
 
4 测试链接:
输入命令：$ ssh -T git@git.oschina.net
然后输入yes
如果成功可以看到你的用户名和邮箱.
出现错误可以测试：$ ssh -Tv git@git.oschina.net
 
5 设置用户名和邮箱
$ git  config user.name"you name"
$git  config user.email"you_email@youemal.com"
 
6 然后在web开源中国中创建一个project.
 
7 测试上传文件
 创建文件夹，需要和你建立的projexct同名。
mkdir hello
cd hello
git init
touch README
git add README
git commit  -m  'frist commit' 
8 提交
git remote add test git@git.oschina.net:web用户名/hell.git
git push -u test master
如里有报错误：
To git@git.oschina.net:yangzhi/hello.git
 ! [rejected]        master -> master (fetch first)
error: failed to push some refs to 'git@git.oschina.net:yangzhi/hello.git'
hint: Updates were rejected because the remote contains work that you do
hint: not have locally. This is usually caused by another repository pushin
hint: to the same ref. You may want to first merge the remote changes (e.g.
hint: 'git pull') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
 
 
可以输入：
git push -f 
可以ok了.
10 克隆代码
git clone git@github..com:用户名/项目名.git