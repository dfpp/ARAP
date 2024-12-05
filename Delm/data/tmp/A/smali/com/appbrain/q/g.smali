.class public abstract Lcom/appbrain/q/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/q/a0;


# static fields
.field private static final a:Lcom/appbrain/q/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/appbrain/q/n;->a()Lcom/appbrain/q/n;

    move-result-object v0

    sput-object v0, Lcom/appbrain/q/g;->a:Lcom/appbrain/q/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static d(Lcom/appbrain/q/x;)Lcom/appbrain/q/x;
    .locals 1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/appbrain/q/y;->c()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/appbrain/q/a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/appbrain/q/b;

    invoke-direct {v0}, Lcom/appbrain/q/b;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appbrain/q/b;

    invoke-direct {v0}, Lcom/appbrain/q/b;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lcom/appbrain/q/b;->a()Lcom/appbrain/q/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appbrain/q/t;->b(Lcom/appbrain/q/x;)Lcom/appbrain/q/t;

    throw v0

    :cond_1
    return-object p0
.end method

.method private e([BILcom/appbrain/q/n;)Lcom/appbrain/q/x;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0, p2, v0}, Lcom/appbrain/q/k;->d([BIIZ)Lcom/appbrain/q/k;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Lcom/appbrain/q/a0;->b(Lcom/appbrain/q/k;Lcom/appbrain/q/n;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/appbrain/q/x;
    :try_end_0
    .catch Lcom/appbrain/q/t; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/appbrain/q/k;->f(I)V
    :try_end_1
    .catch Lcom/appbrain/q/t; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1, p2}, Lcom/appbrain/q/t;->b(Lcom/appbrain/q/x;)Lcom/appbrain/q/t;

    throw p1
    :try_end_2
    .catch Lcom/appbrain/q/t; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    throw p1
.end method

.method private f(Lcom/appbrain/q/j;Lcom/appbrain/q/n;)Lcom/appbrain/q/x;
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Lcom/appbrain/q/j;->u()Lcom/appbrain/q/k;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/appbrain/q/a0;->b(Lcom/appbrain/q/k;Lcom/appbrain/q/n;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/appbrain/q/x;
    :try_end_0
    .catch Lcom/appbrain/q/t; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/appbrain/q/k;->f(I)V
    :try_end_1
    .catch Lcom/appbrain/q/t; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1, p2}, Lcom/appbrain/q/t;->b(Lcom/appbrain/q/x;)Lcom/appbrain/q/t;

    throw p1
    :try_end_2
    .catch Lcom/appbrain/q/t; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    throw p1
.end method


# virtual methods
.method public final synthetic a(Lcom/appbrain/q/j;Lcom/appbrain/q/n;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appbrain/q/g;->f(Lcom/appbrain/q/j;Lcom/appbrain/q/n;)Lcom/appbrain/q/x;

    move-result-object p1

    invoke-static {p1}, Lcom/appbrain/q/g;->d(Lcom/appbrain/q/x;)Lcom/appbrain/q/x;

    return-object p1
.end method

.method public final bridge synthetic c([B)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/appbrain/q/g;->a:Lcom/appbrain/q/n;

    array-length v1, p1

    invoke-direct {p0, p1, v1, v0}, Lcom/appbrain/q/g;->e([BILcom/appbrain/q/n;)Lcom/appbrain/q/x;

    move-result-object p1

    invoke-static {p1}, Lcom/appbrain/q/g;->d(Lcom/appbrain/q/x;)Lcom/appbrain/q/x;

    return-object p1
.end method
