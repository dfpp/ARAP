.class final Lcom/appbrain/n/i$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/n/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static e:Ljava/util/Random;


# instance fields
.field final b:Lcom/appbrain/p/b$a;

.field final c:Ljava/lang/String;

.field d:Lcom/appbrain/n/i$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/appbrain/n/i$c;->e:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>(Lcom/appbrain/p/b$a;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/appbrain/n/i$d;->b:Lcom/appbrain/n/i$d;

    iput-object v0, p0, Lcom/appbrain/n/i$c;->d:Lcom/appbrain/n/i$d;

    iput-object p1, p0, Lcom/appbrain/n/i$c;->b:Lcom/appbrain/p/b$a;

    iput-object p2, p0, Lcom/appbrain/n/i$c;->c:Ljava/lang/String;

    return-void
.end method

.method static d(Lcom/appbrain/t/l;)Lcom/appbrain/n/i$c;
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/appbrain/p/b;->V()Lcom/appbrain/p/b$a;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/appbrain/p/b$a;->z(Lcom/appbrain/t/l;)Lcom/appbrain/p/b$a;

    invoke-virtual {v2, v0, v1}, Lcom/appbrain/p/b$a;->x(J)Lcom/appbrain/p/b$a;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/appbrain/n/i$c;->e:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/appbrain/n/i$c;

    invoke-direct {v0, v2, p0}, Lcom/appbrain/n/i$c;-><init>(Lcom/appbrain/p/b$a;Ljava/lang/String;)V

    return-object v0
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;)Lcom/appbrain/n/i$c;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/appbrain/p/b;->V()Lcom/appbrain/p/b$a;

    move-result-object p1

    const-string v1, "proto"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/appbrain/q/a$a;->l([B)Lcom/appbrain/q/a$a;

    check-cast p1, Lcom/appbrain/p/b$a;

    new-instance v1, Lcom/appbrain/n/i$c;

    invoke-direct {v1, p1, p0}, Lcom/appbrain/n/i$c;-><init>(Lcom/appbrain/p/b$a;Ljava/lang/String;)V

    invoke-static {}, Lcom/appbrain/n/i$d;->values()[Lcom/appbrain/n/i$d;

    move-result-object p0

    const-string p1, "state"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    aget-object p0, p0, p1

    iput-object p0, v1, Lcom/appbrain/n/i$c;->d:Lcom/appbrain/n/i$d;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/appbrain/q/t; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    invoke-static {}, Lcom/appbrain/n/i;->l()Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method final c()J
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/appbrain/n/i$c;->b:Lcom/appbrain/p/b$a;

    invoke-virtual {v2}, Lcom/appbrain/p/b$a;->v()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    iget-object v2, p0, Lcom/appbrain/n/i$c;->b:Lcom/appbrain/p/b$a;

    invoke-virtual {v2, v0, v1}, Lcom/appbrain/p/b$a;->x(J)Lcom/appbrain/p/b$a;

    return-wide v4

    :cond_0
    return-wide v2
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/appbrain/n/i$c;

    iget-object v0, p0, Lcom/appbrain/n/i$c;->b:Lcom/appbrain/p/b$a;

    invoke-virtual {v0}, Lcom/appbrain/p/b$a;->v()J

    move-result-wide v0

    iget-object p1, p1, Lcom/appbrain/n/i$c;->b:Lcom/appbrain/p/b$a;

    invoke-virtual {p1}, Lcom/appbrain/p/b$a;->v()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method final f(Lcom/appbrain/q/j;Lcom/appbrain/p/f;)V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/n/i$c;->b:Lcom/appbrain/p/b$a;

    invoke-static {}, Lcom/appbrain/p/d;->L()Lcom/appbrain/p/d$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/appbrain/p/d$a;->w(Lcom/appbrain/q/j;)Lcom/appbrain/p/d$a;

    invoke-virtual {v1, p2}, Lcom/appbrain/p/d$a;->v(Lcom/appbrain/p/f;)Lcom/appbrain/p/d$a;

    invoke-virtual {v0, v1}, Lcom/appbrain/p/b$a;->y(Lcom/appbrain/p/d$a;)Lcom/appbrain/p/b$a;

    return-void
.end method

.method final g()J
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/appbrain/n/i$c;->b:Lcom/appbrain/p/b$a;

    invoke-virtual {v1}, Lcom/appbrain/p/b$a;->E()Lcom/appbrain/t/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appbrain/t/l;->L()Lcom/appbrain/t/l$a;

    move-result-object v1

    sget-object v2, Lcom/appbrain/t/l$a;->c:Lcom/appbrain/t/l$a;

    if-ne v1, v2, :cond_0

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method final h()Z
    .locals 5

    iget-object v0, p0, Lcom/appbrain/n/i$c;->d:Lcom/appbrain/n/i$d;

    sget-object v1, Lcom/appbrain/n/i$d;->b:Lcom/appbrain/n/i$d;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/appbrain/n/i$c;->c()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/appbrain/n/i$c;->d:Lcom/appbrain/n/i$d;

    sget-object v1, Lcom/appbrain/n/i$d;->c:Lcom/appbrain/n/i$d;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/appbrain/n/i$c;->c()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method final i()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "proto"

    iget-object v2, p0, Lcom/appbrain/n/i$c;->b:Lcom/appbrain/p/b$a;

    invoke-virtual {v2}, Lcom/appbrain/q/q$a;->u()Lcom/appbrain/q/q;

    move-result-object v2

    check-cast v2, Lcom/appbrain/p/b;

    invoke-virtual {v2}, Lcom/appbrain/q/a;->h()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "state"

    iget-object v2, p0, Lcom/appbrain/n/i$c;->d:Lcom/appbrain/n/i$d;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-static {}, Lcom/appbrain/n/i;->l()Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method

.method final j()Lcom/appbrain/n/i$b;
    .locals 3

    new-instance v0, Lcom/appbrain/n/i$b;

    iget-object v1, p0, Lcom/appbrain/n/i$c;->b:Lcom/appbrain/p/b$a;

    invoke-virtual {v1}, Lcom/appbrain/q/q$a;->u()Lcom/appbrain/q/q;

    move-result-object v1

    check-cast v1, Lcom/appbrain/p/b;

    iget-object v2, p0, Lcom/appbrain/n/i$c;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/appbrain/n/i$b;-><init>(Lcom/appbrain/p/b;Ljava/lang/String;)V

    return-object v0
.end method
