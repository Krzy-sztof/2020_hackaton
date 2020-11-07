import dash_core_components as dcc
import dash_html_components as html
from dash.dependencies import Input, Output, State

from app import app

layout = [html.Div(['Podaj roczne zużycie energii: ', dcc.Input(id='input')]),
          html.Div(dcc.Slider(id='slider_pv', min=0, max=100, marks={0: {'label': '0'}, 100: {'label': '100'}}, step=1, value=5)),
          html.Div(id='pv_output', children=['aalaa'])
          ]

@app.callback(
    Output('pv_output', 'children'),
    [Input('slider_pv', 'value')])
def u_price_tge_graph(value):
    return 'You have selected "{}"'.format(value)