import json
import pandas as pd

# Chuyển đổi dictionary thành chuỗi JSON
json_data=pd.read_excel("data_config.xlsx",header=None)
df_cleaned = json_data.fillna("")
df_cleaned=df_cleaned.astype(str)
dict_=df_cleaned.to_dict()
json_data = json.dumps(dict_,ensure_ascii=False)




print(json_data)