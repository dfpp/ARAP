.class public final Lcom/appbrain/o/j0;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.appspot.swisscodemonkeys."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.apptornado."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.appbrain."

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.swiss_codemonkeys."

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/appbrain/o/j0;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 7

    :try_start_0
    const-string v0, "com.android.vending"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x1c

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_0

    const/high16 v3, 0x8000000

    goto :goto_0

    :cond_0
    const/16 v3, 0x40

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {}, Lcom/appbrain/o/h0;->d()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz v0, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    :goto_1
    array-length v1, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    const-string v5, "zen2II1nK1Sx2swLcCn16w"

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lcom/appbrain/o/b;->b([B)[B

    move-result-object v4

    const/16 v6, 0xb

    invoke-static {v4, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_6

    neg-int p0, p0

    :cond_6
    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :cond_7
    if-nez p0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    return p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/appbrain/o/j0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
