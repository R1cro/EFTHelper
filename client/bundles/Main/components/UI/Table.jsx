import React from 'react';
import MaterialTable from 'material-table';

const Table = ({columns, data, title, onRowClick}) => {
    return (
        <MaterialTable
            title={title}
            columns={columns}
            data={data}
            onRowClick={onRowClick}
            options={{
                rowStyle: {
                    backgroundColor: 'var(--bg-silver-color)',
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