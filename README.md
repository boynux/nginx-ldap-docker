Builds NGINX Docker image with LDAP module enabled
==================================================

Usage:

1. Get nginx source code (apt-get source nginx)
2. Get nginx-ldap-module (https://github.com/kvspb/nginx-auth-ldap)
3. Copy nginx-ldap-mdoule into nginx source code directory
4. Run 

    ./build.sh <nginx-src-path>

5. Docker image is created with nginx-ldap tag.
