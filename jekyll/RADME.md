构建镜像命令：<br/>
sudo docker build -t thanks/jekyll
构建Jekyll网站：<br/>
1.下载jekyll源码<br/>
cd $HOME<br/>
git clone https://github.com/jamtur01/james_blog.git<br/>
2.构建james_blog容器,命令为：<br/>
sudo docker run -v $HOME/james_blog:/data/ --name james_blog thanks/jekyll Configuration file: /data/_config.yml<br/>
    启动一个叫做james_blog的新容器，把本地的jame_blog目录作为/data/卷挂载到容器里。容器已经拿到网站的源代码，并将其构建到已编译的网站，存放到/var/www/html目录。<br/>
    卷是在一个或多个容器中特殊指定的目录，卷回绕过联合文件系统，为持久化数据和共享数据提供几个有用的特征。<br/>
    卷可以在容器间共享和重用<br/>
    共享卷时不一定要运行相应的容器<br/>
    对卷的修改会直接在卷上反映出来<br/>
    更新镜像时不会包含对卷的修改<br/>
    卷回一直存在，知道没有容器使用他们<br/>
    利用卷，可以在不用提交镜像修改的情况下，想镜像里加入数据(如源代码、数据或者其他内容),并且可以在容器间共享这些数据。<br/>
    
创建apache容器来承载jekyll<br/>
sudo docker run -d -P --volumes-from james_blog thanks/apache<br/>
更新jekyll网站<br/>
在更改网站相关源码后，可以使用sudo docker start james_blog来启动容器。<br/>
扩展jekyll示例网站<br/>
运行多个Apache容器，这些容器都使用来自james_blog容器的卷。这些apache容器前面加一个负载均衡器，我们就拥有了一个web集群<br/>
进一步构建一个镜像，这个镜像把用户提供的源数据复制到卷里。在把这个卷挂载到从thanks/jekyll镜像创建的容器。这个就是一个可歉意的通用方案，而且不需要宿主机本地包含任何源代码。<br/>
在一个扩展基础上可以很容器为我们的额服务构建一个Web前端，这个服务用于从指定的源自动构建和部署网站。这个你就有一个完全属于自己的github Pages了<br/>
