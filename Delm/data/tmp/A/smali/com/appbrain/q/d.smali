.class final Lcom/appbrain/q/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Lsun/misc/Unsafe;

.field private static final b:Z

.field private static final c:Z

.field private static final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/appbrain/q/d;->f()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/appbrain/q/d;->a:Lsun/misc/Unsafe;

    invoke-static {}, Lcom/appbrain/q/d;->h()Z

    move-result v0

    sput-boolean v0, Lcom/appbrain/q/d;->b:Z

    invoke-static {}, Lcom/appbrain/q/d;->g()Z

    move-result v0

    sput-boolean v0, Lcom/appbrain/q/d;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appbrain/q/d;->a:Lsun/misc/Unsafe;

    const-class v1, [B

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    int-to-long v0, v0

    sput-wide v0, Lcom/appbrain/q/d;->d:J

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    invoke-static {v0, v1}, Lcom/appbrain/q/d;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/appbrain/q/d;->a:Lsun/misc/Unsafe;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    :cond_2
    :goto_1
    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static b([BJB)V
    .locals 1

    sget-object v0, Lcom/appbrain/q/d;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method static c()Z
    .locals 1

    sget-boolean v0, Lcom/appbrain/q/d;->c:Z

    return v0
.end method

.method static d()Z
    .locals 1

    sget-boolean v0, Lcom/appbrain/q/d;->b:Z

    return v0
.end method

.method static e()J
    .locals 2

    sget-wide v0, Lcom/appbrain/q/d;->d:J

    return-wide v0
.end method

.method private static f()Lsun/misc/Unsafe;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/appbrain/q/d$a;

    invoke-direct {v0}, Lcom/appbrain/q/d$a;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static g()Z
    .locals 9

    const-class v0, Ljava/lang/Object;

    sget-object v1, Lcom/appbrain/q/d;->a:Lsun/misc/Unsafe;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "arrayBaseOffset"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "getByte"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v0, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "putByte"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v0, v7, v3

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    invoke-virtual {v1, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "getLong"

    new-array v7, v5, [Ljava/lang/Class;

    aput-object v0, v7, v3

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    invoke-virtual {v1, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "copyMemory"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    aput-object v0, v7, v3

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    aput-object v0, v7, v5

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v0, v7, v6

    const/4 v0, 0x4

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v7, v0

    invoke-virtual {v1, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static h()Z
    .locals 8

    const-string v0, "getLong"

    sget-object v1, Lcom/appbrain/q/d;->a:Lsun/misc/Unsafe;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "objectFieldOffset"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/reflect/Field;

    aput-object v6, v5, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "getByte"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v5, "putByte"

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "copyMemory"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
