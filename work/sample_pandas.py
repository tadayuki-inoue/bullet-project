import pandas as pd

# 名前と身長のデータを生成(列ごとにデータを生成)
df = pd.DataFrame([ ["taro", "hanako"], [178, 152] ]).T

# 名前と身長のデータを生成(行ごとにデータを生成)
df = pd.DataFrame([ ["taro", 178], ["hanako", 152] ]).T

# 列に名前をつける
df.columns = ["name","height"]

# 表示
print(df)