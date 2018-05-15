# -*- coding: utf-8 -*-
import scrapy
from LianJia.settings import headers
import re,time,datetime,os
from urllib import request
from LianJia.items import LianjiaSpiderItem
import random

class LianjiaspiderSpider(scrapy.Spider):
    name = 'lianjiaSpider'
    allowed_domains = ['lianjia.com']
    # start_urls = ['http://lianjia.com/']

    def start_requests(self):

        #由于条件删选，此处只有一页内容    huayang地名    l3 三室     rp3 貌似价格
        start_urls = ['https://cd.lianjia.com/zufang/huayang/l3rp3/','https://cd.lianjia.com/zufang/huayang/l4rp3/']
        for start_url in start_urls:
            yield scrapy.Request(url=start_url,callback=self.parse,dont_filter=True,headers=headers)


    def parse(self, response):
        # print(response.text)
        # print(response.url)  打印当前请求链接
        html = response.xpath('//div[@class="list-wrap"]/ul[@class="house-lst"]/li')
        for res in html:
            """
            由于信息比较齐全，以下信息没有进行数据处理
            """

            #房屋详细信息链接
            house_info_url = res.xpath('./div[@class="info-panel"]/h2/a/@href').extract()[0]
            #房屋信息title
            house_info_title = res.xpath('./div[@class="info-panel"]/h2/a/@title').extract()[0]
            #小区名称
            house_info_name = res.xpath('./div[@class="info-panel"]//a[@class="laisuzhou"]/span/text()').extract()[0].strip()
            #小区厅室
            house_info_zone = res.xpath('./div[@class="info-panel"]//span[@class="zone"]/span/text()').extract()[0].strip()
            #小区房屋大小
            house_info_meters = res.xpath('./div[@class="info-panel"]//span[@class="meters"]/text()').extract()[0].strip()
            #小区房屋朝向(此处不能去负值)
            house_info_face = res.xpath('.//div[@class="where"]/span[3]/text()').extract()[0]
            #哪个地方租房
            house_info_where = res.xpath('.//div[@class="other"]/div[@class="con"]/a/text()').extract()[0]

            house_info_x = res.xpath('.//div[@class="other"]/div[@class="con"]/text()').extract()
            if len(house_info_x) == 2:
                #楼层
                house_info_floor = res.xpath('.//div[@class="other"]/div[@class="con"]/text()').extract()[0]
                #建筑类型
                house_built_type = res.xpath('.//div[@class="other"]/div[@class="con"]/text()').extract()[-1]
            else:
                # 楼层
                house_info_floor = res.xpath('.//div[@class="other"]/div[@class="con"]/text()').extract()[0]
                # 建筑类型
                house_built_type = None

            #看房时间
            house_look_time = res.xpath('.//div[@class="chanquan"]//span[@class="haskey-ex"]/span/text()').extract()
            if house_look_time:
                house_look_time = house_look_time[0]
            else:
                house_look_time = None


            #租金
            house_info_price = res.xpath('.//div[@class="col-3"]/div[@class="price"]/span[@class="num"]/text()').extract()[0]
            house_info_price  = house_info_price + "元/月"
            #更新时间
            house_info_time = res.xpath('.//div[@class="price-pre"]/text()').extract()[0]

            time.sleep(random.choice([0.5,1,1.5,2]))
            yield scrapy.Request(url=house_info_url,callback=self.detail_parse,dont_filter=True,headers=headers,meta={'house_info_url':house_info_url,'house_info_title':house_info_title,'house_info_name':house_info_name,'house_info_zone':house_info_zone,'house_info_meters':house_info_meters,'house_info_face':house_info_face,'house_info_where':house_info_where,'house_info_floor':house_info_floor,'house_built_type':house_built_type,'house_look_time':house_look_time,'house_info_price':house_info_price,'house_info_time':house_info_time})
    def detail_parse(self,response):
        html = response.xpath('//div[@class="overview"]')

        i = 1

        for res in html:
            #房屋装修
            house_info_fitting_1 = res.xpath('.//span[@class="tips decoration"]/text()').extract()
            house_info_fitting_2 = res.xpath('.//span[@class="tips independentBalcony"]/text()').extract()
            if house_info_fitting_1 and house_info_fitting_2:
                house_info_fitting = house_info_fitting_1[0] + house_info_fitting_2[0]
            elif len(house_info_fitting_2) == 0 and len(house_info_fitting_1) != 0:
                house_info_fitting = house_info_fitting_1[0]
            else:
                house_info_fitting = None

            # print(house_info_fitting)
            #出租方式
            house_renting_style = res.xpath('.//span[@class="payNorm"]/text()').extract()
            house_renting_style = house_renting_style[0] if house_renting_style else None

            #地铁
            house_info_metro = res.xpath('.//div[@class="zf-room"]/p[5]/text()').extract()[0]

            #住宅小区
            house_info_village = res.xpath('.//div[@class="zf-room"]/p[6]/a/text()').extract()
            house_info_village = '-'.join(house_info_village)
            # print(house_info_village)
            #位置、
            house_info_position = res.xpath('.//div[@class="zf-room"]/p[7]/a/text()').extract()
            house_info_position = ' '.join(house_info_position)
            # print(house_info_position)
            #时间
            house_release_time = res.xpath('.//p[@class="lf"]/text()').extract()[-1]
            num = re.match('(\d*)',house_release_time).group()
            house_release_time = (datetime.datetime.now()-datetime.timedelta(days=int(num))).strftime("%Y-%m-%d")  + "发布"
            # print(house_release_time)

            items = LianjiaSpiderItem()

            items['house_info_url'] = response.meta['house_info_url']
            items['house_info_title'] = response.meta['house_info_title']
            items['house_info_name'] = response.meta['house_info_name']
            items['house_info_zone'] = response.meta['house_info_zone']
            items['house_info_meters'] = response.meta['house_info_meters']
            items['house_info_face'] = response.meta['house_info_face']
            items['house_info_where'] = response.meta['house_info_where']
            items['house_info_floor'] = response.meta['house_info_floor']
            items['house_built_type'] = response.meta['house_built_type']
            items['house_look_time'] = response.meta['house_look_time']
            items['house_info_price'] = response.meta['house_info_price']
            items['house_info_time'] = response.meta['house_info_time']

            items['house_info_fitting'] = house_info_fitting
            items['house_renting_style'] = house_renting_style
            items['house_info_metro'] = house_info_metro
            items['house_info_village'] = house_info_village
            items['house_info_position'] = house_info_position
            items['house_release_time'] = house_release_time

            yield items



            # print(house_info_fitting,house_renting_style,house_info_metro,house_info_village,house_info_position,house_release_time)


            # print(house_info_url,house_info_title,house_info_name,house_info_zone,house_info_meters,house_info_face,house_info_where,house_info_floor,house_built_type,house_look_time,house_info_price,house_info_time)






            #图片信息

            house_info_img = res.xpath('.//div[@class="thumbnail"]/ul/li/@data-src').extract()
            #判断是否拥有图片
            if len(house_info_img) != 0:
                for down_url in house_info_img:
                    """图片下载"""
                    # 图片名称
                    img_name = str(time.time()) + '.jpg'
                    # print(response.meta("house_info_title"))
                    # 下载目录
                    root_dir = '/lianjia/img' + "/" + response.meta["house_info_title"]
                    if not os.path.exists(root_dir):
                        os.makedirs(root_dir)
                    request.urlretrieve(down_url,root_dir + "/" + img_name)

                    # print("图片下载链接",down_url)




