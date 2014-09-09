<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         ' mIT>GagWMUSt>YM:&7gse@h<Cdl+74;lC6z(-^r-.Thf W$Xh&h<L!urU<V#q}Y');
define('SECURE_AUTH_KEY',  '|k~SM;-|+*}J^w~vf^2st0]bR+ >:c^Z)R[cu%u|#f-K`)$) ,GeOSx~.i*7@|O]');
define('LOGGED_IN_KEY',    '=~2al4TFe&uT8T!iH2tbPnx8:P+(=)|w&Yj~!!kJq+URq7%75|2`bd8POXc5XVDG');
define('NONCE_KEY',        'lbmX X*&[8}?<3!&.3J%|hS:|c8Iz%;Z=*TnQ71S.UzS)qzHTBi4)8c|R!+HMx):');
define('AUTH_SALT',        'Ox9k=z<D7]F|0|m7*S{Enq?six=4$Sh`w~&yQ=J`a|o)} r0dE2SP|qlV+^EB-$A');
define('SECURE_AUTH_SALT', 'Cby<w!ZlBXi*yH;s=e6,H[ei9G@`t%)R{_VlZsFh.o5T.w*9^sBWkfprw3@lO5r{');
define('LOGGED_IN_SALT',   'a?+/ T`)$/sr}=O8z<+l<N<x=jy^K++H==s6K&-CL8N#Lh?`hD6hBi_V)x_VT]@[');
define('NONCE_SALT',       '&s{xH>g%qIIt*Xg)5{tP=5*/UVnmzxi|1Lx[ig8hrPAs%g>T3Wc|e++zN4K2]vf3');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', '');

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
