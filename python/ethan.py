import pandas as pd

chip=pd.read_csv('chipotle.tsv',sep='\t')

quantitiy = chip['quantity']
item_price = chip['item_price']
order_id = chip['order_id']

print(order_id.head(5))
print(quantitiy.head(5))
print(item_price.head(5))



