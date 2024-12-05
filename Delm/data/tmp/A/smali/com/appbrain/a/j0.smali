.class public abstract Lcom/appbrain/a/j0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/appbrain/a/j;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/appbrain/a/j0;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appbrain/a/j0;->b:Ljava/util/List;

    invoke-static {}, Lcom/appbrain/a/j;->a()Lcom/appbrain/a/j;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/a/j0;->a:Lcom/appbrain/a/j;

    return-void
.end method

.method private b(Lcom/appbrain/q/q;Ljava/lang/String;Lcom/appbrain/t/j;)Lcom/appbrain/v/b$a;
    .locals 0

    invoke-virtual {p1}, Lcom/appbrain/q/q;->H()Lcom/appbrain/q/q$a;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/appbrain/a/j0;->d(Lcom/appbrain/q/x$a;Lcom/appbrain/t/j;)V

    invoke-static {}, Lcom/appbrain/v/b;->t0()Lcom/appbrain/v/b$a;

    move-result-object p3

    invoke-interface {p1}, Lcom/appbrain/q/x$a;->i()Lcom/appbrain/q/x;

    move-result-object p1

    invoke-interface {p1}, Lcom/appbrain/q/x;->h()[B

    move-result-object p1

    invoke-static {p1}, Lcom/appbrain/q/j;->m([B)Lcom/appbrain/q/j;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/appbrain/v/b$a;->w(Lcom/appbrain/q/j;)Lcom/appbrain/v/b$a;

    invoke-virtual {p3, p2}, Lcom/appbrain/v/b$a;->y(Ljava/lang/String;)Lcom/appbrain/v/b$a;

    return-object p3
.end method


# virtual methods
.method public final a(Lcom/appbrain/q/q;Ljava/lang/String;)Lcom/appbrain/v/b$a;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/j0;->a:Lcom/appbrain/a/j;

    iget-object v1, p0, Lcom/appbrain/a/j0;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/appbrain/a/j;->b(Ljava/util/List;)Lcom/appbrain/t/j;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/appbrain/a/j0;->b(Lcom/appbrain/q/q;Ljava/lang/String;Lcom/appbrain/t/j;)Lcom/appbrain/v/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/j0;->b:Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    return-object v0
.end method

.method public abstract d(Lcom/appbrain/q/x$a;Lcom/appbrain/t/j;)V
.end method

.method public final e(Lcom/appbrain/q/q;Ljava/lang/String;)Lcom/appbrain/v/b$a;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/j0;->a:Lcom/appbrain/a/j;

    iget-object v1, p0, Lcom/appbrain/a/j0;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/appbrain/a/j;->f(Ljava/util/List;)Lcom/appbrain/t/j;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/appbrain/a/j0;->b(Lcom/appbrain/q/q;Ljava/lang/String;Lcom/appbrain/t/j;)Lcom/appbrain/v/b$a;

    move-result-object p1

    return-object p1
.end method
