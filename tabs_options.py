import dash_core_components as dcc

tabs = dcc.Tabs(id='main_tab_choose', value='main_page',
                children=[
                    dcc.Tab(
                        label='Start',
                        value='main_page',
                        className='custom-tab',
                        selected_className='custom-tab--selected'
                    ),
                    dcc.Tab(
                        label='domek',
                        value='domek',
                        className='custom-tab',
                        selected_className='custom-tab--selected'
                    ),
                    dcc.Tab(
                        label='pv',
                        value='pv',
                        className='custom-tab',
                        selected_className='custom-tab--selected'
                    ),
                ],
                parent_className='custom-tabs',
                className='custom-tabs-container',
                )
