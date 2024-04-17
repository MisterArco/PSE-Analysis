import io
import pandas as pd
import requests
if 'data_loader' not in globals():
    from mage_ai.data_preparation.decorators import data_loader
if 'test' not in globals():
    from mage_ai.data_preparation.decorators import test


@data_loader
def load_data_from_api(*args, **kwargs):
    """
    Template for loading data from API
    """
    url = 'https://raw.githubusercontent.com/MisterArco/datas/main/pse_data.csv'
    
    pse_dtypes = {
                    'c': float,
                    'h': float,
                    'l': float,
                    'o': float,
                    'v': float,
                    'y': pd.Int64Dtype(),
                    'm': pd.Int64Dtype(),
                    'd': pd.Int64Dtype(),
                    'w': pd.Int64Dtype(),
                    'wd': pd.Int64Dtype(),
                    'last': float,
                    'change': float,
                    'pchange': float,
                    'symbol': str
                }
    parse_dates = ['t']

    return pd.read_csv(url, sep=",", dtype=pse_dtypes, parse_dates=parse_dates)

@test
def test_output(output, *args) -> None:
    """
    Template code for testing the output of the block.
    """
    assert output is not None, 'The output is undefined'
