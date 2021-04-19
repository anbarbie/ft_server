<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'VBwgy?^7mWrrs<3uzA}@q{?* [Dma[i{,HS$WbM.vKS7{lM|udt=6SzMqpsNB,Rg' );
define( 'SECURE_AUTH_KEY',  '-alz<wG8K91V;(dVTvkEUm:Let~0]{@!sNon+LgqET*f_K&E-C<QC]lRh{$A<%}?' );
define( 'LOGGED_IN_KEY',    'qJ/&j&unMv}eA)7Sykm0epe368)?,.dIQ/zVm}H]W/KtcZbN6/k_Q(v$kC&jN`BI' );
define( 'NONCE_KEY',        'NoVmyEv.]h?B]_Q@Q eYh3ez~HD8=FOcPPq|pEfb8Osaz]u@i(~nVao7ZrW6vF}a' );
define( 'AUTH_SALT',        '{66TCSw.:_cVQPRAW!5GeKk0?KJMd 2z*Q$Ct+ iTB2Z^%85D{2d+&mAUq4]Op]:' );
define( 'SECURE_AUTH_SALT', '$@9`Ys]n.5(?;S{6hL)Ai5=;5Q,%LqJ~#!`oP!~YD8Swd_>O&QZH8_!=J@5E*LP#' );
define( 'LOGGED_IN_SALT',   'AwR*HuLr=h=[j^{-;6=C~s4?5D^tWIjj s<r!<X AmDcLhYXkewFU`Vu6PHz|eZK' );
define( 'NONCE_SALT',       'N@4(h@}Sx# ?5@CsYi*jJ)+SVfus.2~5s9Vy8nkCeB$x[#>.;>lMdYM3#%X~5$r:' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

