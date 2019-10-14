import React from 'react';
import PropTypes from "prop-types";
import Main from "../Main";
import { makeStyles, withStyles } from '@material-ui/core/styles';
import Tabs from '@material-ui/core/Tabs';
import Tab from '@material-ui/core/Tab';
import Typography from '@material-ui/core/Typography';
import Box from '@material-ui/core/Box';
import Grid from '@material-ui/core/Grid';

import Bullets from '../Ammo/Bullets';
import Firearms from "../Firearms/Firearms";
import Weapons from '../Firearms/Weapons/Weapons';

function allProps(index) {
    return {
        id: `nav-tab-${index}`,
        'aria-controls': `nav-tabpanel-${index}`,
    };
}

const NavTabs = withStyles({
    root: {
        borderBottom: '1px solid #e8e8e8',
        flexGrow: 1
    },
    indicator: {
        backgroundColor: '#BB6600',
    },
})(Tabs);

const NavTab = withStyles(theme => ({
    root: {
        textTransform: 'none',
        minWidth: 72,
        fontWeight: theme.typography.fontWeightRegular,
        marginRight: theme.spacing(4),
    },
    selected: {},
}))(props => <Tab disableRipple {...props} />);

const StyledTabs = withStyles({
    indicator: {
        display: 'flex',
        justifyContent: 'center',
        backgroundColor: 'transparent',
        boxShadow: 'none',
        '& > div': {
            width: '95%',
            backgroundColor: '#BB6600',
        },
    },
})(props => <Tabs {...props} TabIndicatorProps={{ children: <div /> }} />);

const StyledTab = withStyles(theme => ({
    root: {
        textTransform: 'none',
        color: '#fff',
        fontWeight: theme.typography.fontWeightRegular,
        fontSize: theme.typography.pxToRem(15),
        marginRight: theme.spacing(1),
        '&:focus': {
            opacity: 1,
        },
    },
}))(props => <Tab disableRipple {...props} />);

const useStyles = makeStyles(theme => ({
    root: {
        flexGrow: 1,
    },
    padding: {
        padding: theme.spacing(3),
    },
    background: {
        backgroundColor: 'transparent',
        boxShadow: 'none'
    },
}));


function TabPanel(props) {
    const { children, value, index, ...other } = props;

    return (
        <Typography
            component="div"
            role="tabpanel"
            hidden={value !== index}
            id={`scrollable-prevent-tabpanel-${index}`}
            aria-labelledby={`scrollable-prevent-tab-${index}`}
            {...other}>
            <Box p={3}>{children}</Box>
        </Typography>
    );
}

TabPanel.propTypes = {
    children: PropTypes.node,
    index: PropTypes.any.isRequired,
    value: PropTypes.any.isRequired,
};

const AppTabs = ({ title }) => {
    const classes = useStyles();
    const [value, setValue] = React.useState(0);

    const handleChange = (event, newValue) => {
        setValue(newValue);
    };

    return (
        <Grid container spacing={3} className={classes.background}>
            <Grid item xs={12}>
                <div className={classes.root}>
                    <div className={classes.background}>
                        <StyledTabs value={value} onChange={handleChange} aria-label="styled tabs example" variant="fullWidth" className="tabs">
                            <StyledTab label="Bullets" />
                            <StyledTab label="Weapons" />
                            <StyledTab label="Armor" disabled  />
                        </StyledTabs>
                        <Typography className={classes.padding} />
                        <TabPanel value={value} index={0}>
                            <Grid container justify="center" spacing={3}>
                                <Grid item xs={11}>
                                    <Bullets/>
                                </Grid>
                            </Grid>
                        </TabPanel>
                        <TabPanel value={value} index={1}>
                            <Grid container justify="center" spacing={3}>
                                <Grid item xs={11}>
                                   <Weapons/>
                                </Grid>
                            </Grid>
                        </TabPanel>
                        <TabPanel value={value} index={2}>
                            Item Three
                        </TabPanel>
                    </div>
                </div>
            </Grid>
        </Grid>
    );
};

Main.propTypes = {
    title: PropTypes.string.isRequired,
    updateTitle: PropTypes.func.isRequired,
};

export default AppTabs;
