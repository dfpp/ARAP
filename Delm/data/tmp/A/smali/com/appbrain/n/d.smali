.class public Lcom/appbrain/n/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final k:Ljava/lang/String; = "d"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/appbrain/b;

.field private final c:Lcom/appbrain/n/j;

.field private final d:Lcom/appbrain/k;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/appbrain/a/a$b;

.field private final g:Lcom/appbrain/n/e;

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Lcom/appbrain/b;Ljava/lang/String;Lcom/appbrain/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/appbrain/n/j;

    invoke-direct {v0}, Lcom/appbrain/n/j;-><init>()V

    iput-object v0, p0, Lcom/appbrain/n/d;->c:Lcom/appbrain/n/j;

    new-instance v0, Lcom/appbrain/n/e;

    invoke-direct {v0}, Lcom/appbrain/n/e;-><init>()V

    iput-object v0, p0, Lcom/appbrain/n/d;->g:Lcom/appbrain/n/e;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appbrain/n/d;->h:Z

    iput-object p1, p0, Lcom/appbrain/n/d;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/appbrain/n/d;->b:Lcom/appbrain/b;

    iput-object p3, p0, Lcom/appbrain/n/d;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/appbrain/n/d;->d:Lcom/appbrain/k;

    new-instance p2, Lcom/appbrain/n/d$a;

    invoke-direct {p2, p0}, Lcom/appbrain/n/d$a;-><init>(Lcom/appbrain/n/d;)V

    invoke-static {p1, p2}, Lcom/appbrain/a/a;->a(Landroid/app/Activity;Lcom/appbrain/a/a$b;)Lcom/appbrain/a/a$b;

    iput-object p2, p0, Lcom/appbrain/n/d;->f:Lcom/appbrain/a/a$b;

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/appbrain/b;Lcom/appbrain/k;)Lcom/appbrain/n/d;
    .locals 2

    invoke-static {}, Lcom/appbrain/n/i;->b()Lcom/appbrain/n/i;

    move-result-object v0

    sget-object v1, Lcom/appbrain/t/l$a;->c:Lcom/appbrain/t/l$a;

    invoke-virtual {v0, p1, v1}, Lcom/appbrain/n/i;->c(Lcom/appbrain/b;Lcom/appbrain/t/l$a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/appbrain/n/d;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/appbrain/n/d;-><init>(Landroid/app/Activity;Lcom/appbrain/b;Ljava/lang/String;Lcom/appbrain/k;)V

    return-object v1
.end method

.method static synthetic c(Lcom/appbrain/n/d;)V
    .locals 4

    invoke-static {}, Lcom/appbrain/n/g;->b()Lcom/appbrain/n/g;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/n/d;->b:Lcom/appbrain/b;

    sget-object v2, Lcom/appbrain/t/l$a;->c:Lcom/appbrain/t/l$a;

    new-instance v3, Lcom/appbrain/n/d$c;

    invoke-direct {v3, p0}, Lcom/appbrain/n/d$c;-><init>(Lcom/appbrain/n/d;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/appbrain/n/g;->c(Lcom/appbrain/b;Lcom/appbrain/t/l$a;Lcom/appbrain/o/o0;)V

    return-void
.end method

.method static synthetic e(Lcom/appbrain/n/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/appbrain/n/d;->j:Z

    return p0
.end method

.method static synthetic f(Lcom/appbrain/n/d;)Lcom/appbrain/b;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/n/d;->b:Lcom/appbrain/b;

    return-object p0
.end method

.method static synthetic h(Lcom/appbrain/n/d;)Lcom/appbrain/k;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/n/d;->d:Lcom/appbrain/k;

    return-object p0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appbrain/n/d;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/appbrain/n/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/n/d;->e:Ljava/lang/String;

    return-object p0
.end method

.method private k()V
    .locals 2

    invoke-static {}, Lcom/appbrain/n/i;->b()Lcom/appbrain/n/i;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/n/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appbrain/n/i;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/appbrain/n/d;->g()V

    iget-object v0, p0, Lcom/appbrain/n/d;->d:Lcom/appbrain/k;

    sget-object v1, Lcom/appbrain/k$a;->b:Lcom/appbrain/k$a;

    invoke-interface {v0, v1}, Lcom/appbrain/k;->d(Lcom/appbrain/k$a;)V

    return-void
.end method

.method static synthetic l(Lcom/appbrain/n/d;)Lcom/appbrain/n/j;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/n/d;->c:Lcom/appbrain/n/j;

    return-object p0
.end method

.method static synthetic m(Lcom/appbrain/n/d;)V
    .locals 5

    :goto_0
    iget-object v0, p0, Lcom/appbrain/n/d;->g:Lcom/appbrain/n/e;

    invoke-virtual {v0}, Lcom/appbrain/n/e;->c()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/appbrain/n/d;->c:Lcom/appbrain/n/j;

    invoke-virtual {v0}, Lcom/appbrain/n/j;->a()Lcom/appbrain/p/e;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appbrain/n/d;->g:Lcom/appbrain/n/e;

    invoke-virtual {v0}, Lcom/appbrain/n/e;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/appbrain/n/d;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appbrain/n/d;->i:Z

    invoke-static {}, Lcom/appbrain/a/l1;->d()Lcom/appbrain/a/l1;

    const-wide/16 v0, 0x2710

    const-string v2, "medinwati"

    invoke-static {v2, v0, v1}, Lcom/appbrain/a/l1;->c(Ljava/lang/String;J)J

    move-result-wide v0

    new-instance v2, Lcom/appbrain/n/d$e;

    invoke-direct {v2, p0}, Lcom/appbrain/n/d$e;-><init>(Lcom/appbrain/n/d;)V

    invoke-static {v2, v0, v1}, Lcom/appbrain/o/j;->d(Ljava/lang/Runnable;J)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/appbrain/n/d;->k()V

    return-void

    :cond_2
    invoke-static {v0}, Lcom/appbrain/n/a;->a(Lcom/appbrain/p/e;)Lcom/appbrain/n/a$c;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/appbrain/n/i;->b()Lcom/appbrain/n/i;

    move-result-object v1

    iget-object v2, p0, Lcom/appbrain/n/d;->e:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/appbrain/p/e;->N()Lcom/appbrain/q/j;

    move-result-object v0

    sget-object v3, Lcom/appbrain/n/h;->c:Lcom/appbrain/n/h;

    invoke-virtual {v1, v2, v0, v3}, Lcom/appbrain/n/i;->i(Ljava/lang/String;Lcom/appbrain/q/j;Lcom/appbrain/n/h;)V

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/appbrain/n/c;

    iget-object v3, p0, Lcom/appbrain/n/d;->a:Landroid/app/Activity;

    new-instance v4, Lcom/appbrain/n/d$f;

    invoke-direct {v4, p0, v0}, Lcom/appbrain/n/d$f;-><init>(Lcom/appbrain/n/d;Lcom/appbrain/p/e;)V

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/appbrain/n/c;-><init>(Landroid/content/Context;Lcom/appbrain/n/a$c;Lcom/appbrain/p/e;Lcom/appbrain/n/c$d;)V

    iget-object v0, p0, Lcom/appbrain/n/d;->g:Lcom/appbrain/n/e;

    invoke-virtual {v0, v2}, Lcom/appbrain/n/e;->b(Lcom/appbrain/n/c;)V

    iget-boolean p0, p0, Lcom/appbrain/n/d;->h:Z

    invoke-virtual {v2, p0}, Lcom/appbrain/n/c;->i(Z)V

    :cond_4
    return-void
.end method

.method static synthetic n(Lcom/appbrain/n/d;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appbrain/n/d;->j:Z

    return v0
.end method

.method static synthetic o(Lcom/appbrain/n/d;)Lcom/appbrain/n/e;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/n/d;->g:Lcom/appbrain/n/e;

    return-object p0
.end method

.method static synthetic p(Lcom/appbrain/n/d;)Lcom/appbrain/a/a$b;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/n/d;->f:Lcom/appbrain/a/a$b;

    return-object p0
.end method

.method static synthetic q(Lcom/appbrain/n/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/n/d;->k()V

    return-void
.end method

.method static synthetic r(Lcom/appbrain/n/d;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appbrain/n/d;->h:Z

    return v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v0

    new-instance v1, Lcom/appbrain/n/d$b;

    invoke-direct {v1, p0}, Lcom/appbrain/n/d$b;-><init>(Lcom/appbrain/n/d;)V

    invoke-virtual {v0, v1}, Lcom/appbrain/o/f0;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()Z
    .locals 3

    iget-boolean v0, p0, Lcom/appbrain/n/d;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/appbrain/n/d;->g:Lcom/appbrain/n/e;

    invoke-virtual {v0}, Lcom/appbrain/n/e;->a()Lcom/appbrain/n/c;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/appbrain/n/c;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/appbrain/n/i;->b()Lcom/appbrain/n/i;

    move-result-object v1

    iget-object v2, p0, Lcom/appbrain/n/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/appbrain/n/i;->n(Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public final g()V
    .locals 1

    new-instance v0, Lcom/appbrain/n/d$d;

    invoke-direct {v0, p0}, Lcom/appbrain/n/d$d;-><init>(Lcom/appbrain/n/d;)V

    invoke-static {v0}, Lcom/appbrain/o/j;->i(Ljava/lang/Runnable;)Z

    return-void
.end method
