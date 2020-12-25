import  os
import csv
import  datetime
import logging
logging.basicConfig(level = logging.INFO,format = '%(asctime)s - %(name)s - %(levelname)s - %(message)s')
logger=logging.getLogger("CrawlerStorage")

class writer:
    fileName=""
    date = str(datetime.datetime.now()).replace(":",";").split(".")[0]+" .csv"
    filepath="../Storage/"+str(fileName)
    titleStatus=False
    def __init__(self):
        pass
    def get_img(self,dirname,filename,request):

        if os.path.exists(self.filepath + dirname):
            pass
        else:
            os.makedirs(self.filepath + dirname)

        with open(self.filepath+dirname+ '/'+str(filename)+ ".png", 'wb') as f:
            f.write(request.content)
    def insertxt(self,filename,data):

        with open(self.filepath+filename+".txt",'a',encoding='utf-8')as file:
            file.write(str(data))
            file.write("\n")
        logger.info("InsterOne ==>"+filename)

    def list2txt(self,filename,data):
        with open(self.filepath+filename+".txt",'a',encoding='utf-8')as file:
            for item in data:
                file.write(str(item))
                file.write("\n")
        logger.info("Inster ==>"+filename)
    def txt2list(self,filename):
        list=[]
        with open(self.filepath+filename+".txt",'r',encoding='utf-8')as file:
            for line in file.readlines():
                ln=line.strip()
                list.append(ln)
        return list

    def txt2list_filepath(self,filepath):
        list=[]
        with open(filepath,'r',encoding='utf-8')as file:
            for line in file.readlines():
                ln=line.strip()
                list.append(ln)
        return list
    def insercsv(self, data,filename):
        filepath=self.filepath+filename+".csv"
        if os.path.exists(filepath)==False:
            with open(filepath , 'a', encoding="GB18030")as file:
                writer = csv.writer(file)
                writer.writerow(list(data))
        with open(filepath ,'a', encoding="GB18030")as file:
            writer = csv.writer(file)
            rowdata = list(data.values())
            writer.writerow(rowdata)
        logger.info("InsterOne ==>" + filename)
