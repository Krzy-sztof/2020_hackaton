import dash
import dash_core_components as dcc
import dash_bootstrap_components as dbc
import dash_html_components as html
import plotly.express as px
import pandas as pd
from dash.dependencies import Input, Output, State

from tabs_options import tabs
from pages import pv_page, house_page, start_page

external_stylesheets = ['https://codepen.io/chriddyp/pen/bWLwgP.css']

app = dash.Dash(__name__, external_stylesheets=external_stylesheets)
app.layout = html.Div([
    tabs,
    html.Div(id='tab-content'),
    # dcc.Input(id='input')
])
app.config.suppress_callback_exceptions = True
server = app.server
@app.callback(
    Output('tab-content', 'children'),
    [Input('main_tab_choose', 'value'),])
def update_page_content(value):
    if value == 'main_page':
        children = start_page.layout
    elif value == 'domek':
        children = house_page.layout
    elif value == 'pv':
        children = pv_page.layout
    else:
        children = ['Sorry, no such page :<']

    return children





if __name__ == '__main__':
    app.run_server(debug=True,
                   use_reloader=True,)