# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://doc.scrapy.org/en/latest/topics/item-pipeline.html
import json
from openpyxl import Workbook

class LianjiaPipeline(object):
    def process_item(self, item, spider):
        return item

class LianjiaSpiderPipeline(object):

    def __init__(self):
        self.file = open("lianjia.json","w",encoding="utf-8")

    def process_item(self,item,spider):
        str = json.dumps(dict(item),ensure_ascii=False)
        str = str + '\n'
        self.file.write(str)
        return item

    def close_spider(self,spider):
        self.file.close()


class LinajiaEx(object):
    def __init__(self):
        self.wb = Workbook()
        self.ws = self.wb.active
        self.ws.append(['house_info_url','house_info_title','house_info_name','house_info_zone','house_info_meters','house_info_face','house_info_where','house_info_floor','house_built_type','house_look_time','house_info_price','house_info_time','house_info_fitting','house_renting_style','house_info_metro','house_info_village','house_info_position','house_release_time'])


    def process_item(self,item,spider):
        line = [item['house_info_url'],item['house_info_title'],item['house_info_name'],item['house_info_zone'],item['house_info_meters'],item['house_info_face'],item['house_info_where'],item['house_info_floor'],item['house_built_type'],item['house_look_time'],item['house_info_price'],item['house_info_time'],item['house_info_fitting'],item['house_renting_style'],item['house_info_metro'],item['house_info_village'],item['house_info_position'],item['house_release_time']]
        self.ws.append(line)
        self.wb.save('lianjia.xlsx')

        return item