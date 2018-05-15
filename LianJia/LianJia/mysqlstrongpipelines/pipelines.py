from .sql import Sql
from LianJia.items import LianjiaSpiderItem
class LianjiaMysqlSpiderPipeline():
    def process_item(self,item,spider):
        if isinstance(item,LianjiaSpiderItem):
            house_info_url = item["house_info_url"]
            ret = Sql.select_name(house_info_url)
            if ret[0] == 1:
                print("已经存在啦！")
                pass
            else:
                house_info_url =item["house_info_url"]
                house_info_title =item["house_info_title"]
                house_info_name = item["house_info_name"]
                house_info_zone=item["house_info_zone"]
                house_info_meters=item["house_info_meters"]
                house_info_face=item["house_info_face"]
                house_info_where=item["house_info_where"]
                house_info_floor=item["house_info_floor"]
                house_built_type=item["house_built_type"]
                house_look_time=item["house_look_time"]
                house_info_price=item["house_info_price"]
                house_info_time=item["house_info_time"]
                house_info_fitting=item["house_info_fitting"]
                house_renting_style=item["house_renting_style"]
                house_info_metro=item["house_info_metro"]
                house_info_village=item["house_info_village"]
                house_info_position=item["house_info_position"]
                house_release_time=item["house_release_time"]

                print(house_info_url,house_info_title,house_info_name,house_info_zone,house_info_meters,house_info_face,house_info_where,house_info_floor,house_built_type,house_look_time,house_info_price,house_info_time,house_info_fitting,house_renting_style,house_info_metro,house_info_village,house_info_position,house_release_time)


                Sql.insert_db_lianjia_tb(house_info_url,house_info_title,house_info_name,house_info_zone,house_info_meters,house_info_face,house_info_where,house_info_floor,house_built_type,house_look_time,house_info_price,house_info_time,house_info_fitting,house_renting_style,house_info_metro,house_info_village,house_info_position,house_release_time)

