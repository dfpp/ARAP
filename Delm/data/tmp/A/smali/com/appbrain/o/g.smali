.class public final Lcom/appbrain/o/g;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/appbrain/o/p;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appbrain/o/g$a;

    invoke-direct {v0}, Lcom/appbrain/o/g$a;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/appbrain/o/p;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/appbrain/o/g;->b:I

    iput-object p1, p0, Lcom/appbrain/o/g;->a:Lcom/appbrain/o/p;

    return-void
.end method

.method private declared-synchronized a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/appbrain/o/g;->b:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/appbrain/o/g;->b:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/appbrain/o/g;->b:I

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/appbrain/o/g;->b:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/appbrain/o/g;->b:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, p1

    iput v0, p0, Lcom/appbrain/o/g;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final c(Ljava/lang/String;[B)[B
    .locals 7

    iget-object v0, p0, Lcom/appbrain/o/g;->a:Lcom/appbrain/o/p;

    invoke-virtual {v0}, Lcom/appbrain/o/p;->e()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    const/4 v4, 0x3

    if-ge v2, v4, :cond_3

    invoke-direct {p0, v0, p1}, Lcom/appbrain/o/g;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-static {}, Lcom/appbrain/o/c;->d()Lcom/appbrain/o/c;

    move-result-object v4

    invoke-virtual {v4, v3, p2}, Lcom/appbrain/o/c;->b(Ljava/lang/String;[B)Lcom/appbrain/o/c$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appbrain/o/c$a;->a()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/appbrain/o/c$a;->b()[B

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v3}, Lcom/appbrain/o/c$a;->a()I

    move-result v4

    const/16 v5, 0xcc

    if-ne v4, v5, :cond_1

    return-object v1

    :cond_1
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bad response "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/appbrain/o/c$a;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/appbrain/o/c$a;->a()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x1f4

    if-lt v3, v5, :cond_2

    move-object v3, v4

    goto :goto_1

    :cond_2
    move-object v3, v4

    goto :goto_2

    :catch_0
    move-exception v3

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/appbrain/o/g;->b(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    goto :goto_4

    :goto_3
    throw v3

    :goto_4
    goto :goto_3
.end method
