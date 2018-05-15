# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://doc.scrapy.org/en/latest/topics/items.html

import scrapy


class LianjiaItem(scrapy.Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    pass


class LianjiaSpiderItem(scrapy.Item):

    house_info_url = scrapy.Field()
    house_info_title = scrapy.Field()
    house_info_name = scrapy.Field()
    house_info_zone = scrapy.Field()
    house_info_meters = scrapy.Field()
    house_info_face = scrapy.Field()
    house_info_where = scrapy.Field()
    house_info_floor = scrapy.Field()
    house_built_type = scrapy.Field()
    house_look_time = scrapy.Field()
    house_info_price = scrapy.Field()
    house_info_time = scrapy.Field()


    house_info_fitting = scrapy.Field()
    house_renting_style = scrapy.Field()
    house_info_metro = scrapy.Field()
    house_info_village = scrapy.Field()
    house_info_position = scrapy.Field()
    house_release_time = scrapy.Field()