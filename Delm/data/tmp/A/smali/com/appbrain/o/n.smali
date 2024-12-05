.class public final Lcom/appbrain/o/n;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/o/n$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ggpht.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "googleusercontent.com"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/appbrain/o/n;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/String;ILcom/appbrain/o/n$a;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/appbrain/o/n;->b(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x640

    if-le p1, p0, :cond_1

    const/16 p1, 0x640

    :cond_1
    invoke-static {v0}, Lcom/appbrain/o/n;->d(Ljava/net/URI;)Ljava/lang/String;

    move-result-object p0

    if-lez p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Lcom/appbrain/o/n$a;->c(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lcom/appbrain/o/n;->c(Ljava/net/URI;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    return-object v1

    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method private static c(Ljava/net/URI;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".*=(s|w|h)[0-9]+(-c)?$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v3, "jokes-app.com"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/identicons/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    sget-object v0, Lcom/appbrain/o/n;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    :cond_4
    return v2
.end method

.method private static d(Ljava/net/URI;)Ljava/lang/String;
    .locals 11

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "=(s|w|h)[0-9]+(-c)?$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    move-result v7

    invoke-virtual {p0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v10

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
