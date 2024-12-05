.class public final Lcom/appbrain/o/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/lang/String;)J
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/appbrain/o/b;->b([B)[B

    move-result-object p0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    aget-byte v3, p0, v2

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static b([B)[B
    .locals 6

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    const-wide v4, 0x1b1138119L

    mul-long v0, v0, v4

    aget-byte v4, p0, v3

    mul-int/lit8 v4, v4, 0x29

    int-to-long v4, v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    new-array v3, p0, [B

    :goto_1
    if-ge v2, p0, :cond_1

    const-wide/16 v4, 0xff

    and-long/2addr v4, v0

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v3, v2

    shr-long/2addr v0, p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v3
.end method
