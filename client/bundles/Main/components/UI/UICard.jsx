import React from 'react';
import { makeStyles } from '@material-ui/core/styles';
import Card from '@material-ui/core/Card';
import CardActionArea from '@material-ui/core/CardActionArea';
import CardActions from '@material-ui/core/CardActions';
import CardContent from '@material-ui/core/CardContent';
import CardMedia from '@material-ui/core/CardMedia';
import Button from '@material-ui/core/Button';
import Typography from '@material-ui/core/Typography';
import TestImage1 from '../../images/weapon/M4A1.png';
import TestImage2 from '../../images/weapon/AKS-74UN.png';
import TestImage3 from '../../images/weapon/P226R.png';
import TestImage4 from '../../images/weapon/AK-74M.png';
import TestImage5 from '../../images/weapon/HK_416A5.png';



const useStyles = makeStyles({
    card: {
        width: 1000,
        outline: 'none',
        backgroundColor: 'var(--bg-silver-color)',
        border: 'rgba(85, 85, 85, 0.2) solid 2px',
    },
    media: {
        backgroundColor: 'var(--bg-orange-color-opacity)',
        objectFit: 'none',
        objectPosition: '42% 15%',
    },
    cardContent: {
        backgroundColor: 'var(--bg-black-opacity)',
        color: 'white',
        borderBottom: 'var(--orange) solid 2px',
    },
    cardActions: {
        color: 'white',
        backgroundColor: 'var(--bg-silver-color)',
    },
    button: {
        color: 'white'
    }
});

function UICard({data}) {
    const classes = useStyles();

    return (
        <Card className={classes.card}>
            <CardActionArea>
                <CardMedia
                    className={classes.media}
                    component="img"
                    alt="Contemplative Reptile"
                    height="200"
                    image={TestImage1} // TODO: Need to resize ALL images to one static size!
                    title="Contemplative Reptile"
                />
                <CardContent className={classes.cardContent}>
                    <Typography gutterBottom variant="h5" component="h2">
                        {data.name}
                    </Typography>
                    <Typography variant="body2" color="textSecondary" component="p">
                    </Typography>
                </CardContent>
            </CardActionArea>
            <CardActions className={classes.cardActions}>
                <Button size="small" className={classes.button}>
                    Share
                </Button>
                <Button size="small" className={classes.button}>
                    Learn More
                </Button>
            </CardActions>
        </Card>
    );
}

export default UICard;