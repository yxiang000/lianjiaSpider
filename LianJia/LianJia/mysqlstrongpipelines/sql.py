import pymysql
from LianJia import settings
MYSQL_HOST = settings.MYSQL_HOSTS
MYSQL_USER = settings.MYSQL_USER
MYSQL_PASSWORD =settings.MYSQL_PASSWORD
MYSQL_PORT = settings.MYSQL_PORT
MYSQL_DB = settings.MYSQL_DB

db = pymysql.connect(user=MYSQL_USER,password=MYSQL_PASSWORD,host=MYSQL_HOST,port=MYSQL_PORT,database=MYSQL_DB,charset="utf8")
cousor = db.cursor()
class Sql():
    @classmethod
    def insert_db_lianjia_tb(cls,house_info_url,house_info_title,house_info_name,house_info_zone,house_info_meters,house_info_face,house_info_where,house_info_floor,house_built_type,house_look_time,house_info_price,house_info_time,house_info_fitting,house_renting_style,house_info_metro,house_info_village,house_info_position,house_release_time):
        sql = 'insert into tb_lianjia(house_info_url,house_info_title,house_info_name,house_info_zone,house_info_meters,house_info_face,house_info_where,house_info_floor,house_built_type,house_look_time,house_info_price,house_info_time,house_info_fitting,house_renting_style,house_info_metro,house_info_village,house_info_position,house_release_time)' \
              ' VALUES (%(house_info_url)s,%(house_info_title)s,%(house_info_name)s,%(house_info_zone)s,%(house_info_meters)s,%(house_info_face)s,%(house_info_where)s,%(house_info_floor)s,%(house_built_type)s,%(house_look_time)s,%(house_info_price)s,%(house_info_time)s,%(house_info_fitting)s,%(house_renting_style)s,%(house_info_metro)s,%(house_info_village)s,%(house_info_position)s,%(house_release_time)s)'
        value = {
            'house_info_url':house_info_url,
            'house_info_title':house_info_title,
            'house_info_name':house_info_name,
            'house_info_zone':house_info_zone,
            'house_info_meters':house_info_meters,
            'house_info_face':house_info_face,
            'house_info_where':house_info_where,
            'house_info_floor':house_info_floor,
            'house_built_type':house_built_type,
            'house_look_time':house_look_time,
            'house_info_price':house_info_price,
            'house_info_time':house_info_time,
            'house_info_fitting':house_info_fitting,
            'house_renting_style':house_renting_style,
            'house_info_metro':house_info_metro,
            'house_info_village':house_info_village,
            'house_info_position':house_info_position,
            'house_release_time':house_release_time
        }

        try:
            cousor.execute(sql,value)
            db.commit()
            print("插入成功！！！")
        except Exception as e:
            print("插入失败",e)
            db.rollback()


    #去重
    @classmethod
    def select_name(cls,house_info_url):
        sql = 'select exists(select 1 from tb_lianjia where house_info_url=%(house_info_url)s)'
        value = {
            "house_info_url":house_info_url
        }
        cousor.execute(sql,value)
        return cousor.fetchall()[0]