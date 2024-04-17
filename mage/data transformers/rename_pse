if 'transformer' not in globals():
    from mage_ai.data_preparation.decorators import transformer
if 'test' not in globals():
    from mage_ai.data_preparation.decorators import test


@transformer
def transform(data, *args, **kwargs):
    
    # Renaming the Columns
    data.rename(columns = {
        'c':'closing_price',
        'h':'high_price', 
        'l':'low_price',
        'o':'opening_price',
        't':'date',
        'v':'trading_volume',
        'y':'year',
        'm':'month',
        'd':'day',
        'w':'week_number',
        'wd':'weekday_num',
        'last':'last_price',
        'change':'price_change',
        'pchange':'price_change_percent',
        'symbol':'symbol',
        }, inplace = True)

    return data


@test
def test_output(output, *args) -> None:
    """
    Template code for testing the output of the block.
    """
    assert output is not None, 'The output is undefined'