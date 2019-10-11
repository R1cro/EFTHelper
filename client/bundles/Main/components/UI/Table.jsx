import React from 'react';
import MaterialTable from 'material-table';

const Table = ({columns, data, title}) => {
    const [] = React.useState({
        columns: columns,
        data: data,
    });

    return (
        <MaterialTable
            title={title}
            columns={columns}
            data={data}
            options={{
                rowStyle: {
                    backgroundColor: 'rgba(0, 0, 0, 0.3)',
                    borderBottom: 'none'
                },
                headerStyle: {
                    backgroundColor: 'rgba(187,102,0, 0.6)',
                    color: '#FFF',
                    '&:hover': { color: '#AFA'},
                },
                cellStyle: {
                    color: '#FFF',
                    fontFamily: 'Bender',
                },
                pageSize: 5,
                pageSizeOptions: []

            }}
        />
    );
};

export default Table;