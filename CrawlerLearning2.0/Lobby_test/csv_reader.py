


def read_bycsv():
    import csv
    with open("../Data/纪香芽籽.csv",'r',encoding="UTF-8") as f :
        reader = csv.reader(f)
        for item in reader:
            #print(item[0])
            print(item)
def read_bypd():
    import pandas as pd



    csv_data = pd.read_csv("../Data/纪香芽籽.csv")
    print(csv_data)
    print(type(csv_data))
    #二位数组
    #print(csv_data.values)
    # 获取mblog_id 列
    print(list(csv_data['mblog_id'].values))


global mblogid_list
import pandas as  pd
csv_data = pd.read_csv("../Data/纪香芽籽.csv")
mblogid_list = csv_data['mblog_id'].values


def check_bymblogid(mblog_id):
    ##读取csv中mblogid，过滤重复数据
    if mblog_id in mblogid_list:
        pass
    return mblog_id in mblogid_list
#
# if __name__ == '__main__':
#     print(check_bymblogid(int('4548267083830620')))
