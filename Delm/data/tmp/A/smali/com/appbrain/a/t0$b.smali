.class final Lcom/appbrain/a/t0$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final i:Ljava/util/Set;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:J

.field private final c:J

.field private d:J

.field private e:I

.field private f:I

.field private g:I

.field private h:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.android.vending"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.google.android.feedback"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/appbrain/a/t0$b;->i:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appbrain/a/t0$b;->a:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/appbrain/a/t0$b;->h:[I

    iput-wide p1, p0, Lcom/appbrain/a/t0$b;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide v0, 0x9a7ec800L

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/appbrain/a/t0$b;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/32 v0, 0x240c8400

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/appbrain/a/t0$b;->c:J

    return-void
.end method

.method static synthetic a(Lcom/appbrain/a/t0$b;)J
    .locals 2

    iget-wide v0, p0, Lcom/appbrain/a/t0$b;->d:J

    return-wide v0
.end method

.method static synthetic d(Lcom/appbrain/a/t0$b;)I
    .locals 0

    iget p0, p0, Lcom/appbrain/a/t0$b;->e:I

    return p0
.end method

.method static synthetic e(Lcom/appbrain/a/t0$b;)I
    .locals 0

    iget p0, p0, Lcom/appbrain/a/t0$b;->f:I

    return p0
.end method

.method static synthetic f(Lcom/appbrain/a/t0$b;)I
    .locals 0

    iget p0, p0, Lcom/appbrain/a/t0$b;->g:I

    return p0
.end method

.method static synthetic g(Lcom/appbrain/a/t0$b;)[I
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/t0$b;->h:[I

    return-object p0
.end method


# virtual methods
.method final b()V
    .locals 3

    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/appbrain/a/f0;->a:[B

    invoke-static {v1}, Lcom/appbrain/a/f0;->a([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    sget-object v0, Lcom/appbrain/a/f0;->b:[B

    invoke-static {v0}, Lcom/appbrain/a/f0;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/a/m1;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    or-int/lit8 v2, v2, 0x2

    :cond_1
    sget-object v0, Lcom/appbrain/a/f0;->c:[B

    invoke-static {v0}, Lcom/appbrain/a/f0;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/a/m1;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    or-int/lit8 v2, v2, 0x4

    :cond_2
    iget-object v0, p0, Lcom/appbrain/a/t0$b;->h:[I

    aput v2, v0, v1

    return-void
.end method

.method final c(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    .locals 8

    sget-object v0, Lcom/appbrain/a/t0$b;->i:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_5

    iget p2, p0, Lcom/appbrain/a/t0$b;->e:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/appbrain/a/t0$b;->e:I

    iget-wide v2, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-object p2, p0, Lcom/appbrain/a/t0$b;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v4, p0, Lcom/appbrain/a/t0$b;->b:J

    cmp-long p2, v2, v4

    if-lez p2, :cond_0

    iget p2, p0, Lcom/appbrain/a/t0$b;->g:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/appbrain/a/t0$b;->g:I

    :cond_0
    iget-wide v4, p0, Lcom/appbrain/a/t0$b;->c:J

    cmp-long p2, v2, v4

    if-lez p2, :cond_1

    iget p2, p0, Lcom/appbrain/a/t0$b;->f:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/appbrain/a/t0$b;->f:I

    :cond_1
    const-wide v4, 0x11732a5c400L

    cmp-long p2, v2, v4

    if-lez p2, :cond_5

    iget-wide v6, p0, Lcom/appbrain/a/t0$b;->d:J

    cmp-long p2, v2, v6

    if-ltz p2, :cond_2

    cmp-long p2, v6, v4

    if-gtz p2, :cond_5

    :cond_2
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_4

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p2, v1

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-nez p2, :cond_5

    iput-wide v2, p0, Lcom/appbrain/a/t0$b;->d:J

    :cond_5
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/appbrain/o/b;->a(Ljava/lang/String;)J

    move-result-wide p1

    long-to-int p2, p1

    sget-object p1, Lcom/appbrain/a/u0;->a:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/appbrain/a/t0$b;->h:[I

    aget p2, p1, v0

    add-int/2addr p2, v1

    aput p2, p1, v0

    :cond_6
    return-void
.end method
