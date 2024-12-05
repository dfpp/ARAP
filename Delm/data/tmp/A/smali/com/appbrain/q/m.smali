.class final Lcom/appbrain/q/m;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final a:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/appbrain/q/m;->b()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/appbrain/q/m;->a:Ljava/lang/Class;

    return-void
.end method

.method public static a()Lcom/appbrain/q/n;
    .locals 4

    sget-object v0, Lcom/appbrain/q/m;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "getEmptyRegistry"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appbrain/q/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    sget-object v0, Lcom/appbrain/q/n;->a:Lcom/appbrain/q/n;

    return-object v0
.end method

.method private static b()Ljava/lang/Class;
    .locals 1

    :try_start_0
    const-string v0, "com.google.protobuf.ExtensionRegistry"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
