.class public Lcom/appbrain/n/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/n/b$f;,
        Lcom/appbrain/n/b$g;,
        Lcom/appbrain/n/b$h;
    }
.end annotation


# static fields
.field private static final n:Ljava/lang/String; = "b"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/appbrain/b;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/appbrain/n/b$h;

.field private final e:J

.field private final f:J

.field private final g:Lcom/appbrain/n/j;

.field private final h:Ljava/util/List;

.field private i:Lcom/appbrain/n/a$b;

.field private j:Z

.field private k:Z

.field private l:Z

.field private final m:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/appbrain/b;Ljava/lang/String;Lcom/appbrain/n/b$h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/appbrain/n/j;

    invoke-direct {v0}, Lcom/appbrain/n/j;-><init>()V

    iput-object v0, p0, Lcom/appbrain/n/b;->g:Lcom/appbrain/n/j;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appbrain/n/b;->h:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appbrain/n/b;->j:Z

    new-instance v0, Lcom/appbrain/n/b$e;

    invoke-direct {v0, p0}, Lcom/appbrain/n/b$e;-><init>(Lcom/appbrain/n/b;)V

    iput-object v0, p0, Lcom/appbrain/n/b;->m:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/appbrain/n/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/appbrain/n/b;->b:Lcom/appbrain/b;

    iput-object p3, p0, Lcom/appbrain/n/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/appbrain/n/b;->d:Lcom/appbrain/n/b$h;

    invoke-static {}, Lcom/appbrain/a/l1;->d()Lcom/appbrain/a/l1;

    const-string p1, "medbaloti"

    const-wide/16 p2, 0x1388

    invoke-static {p1, p2, p3}, Lcom/appbrain/a/l1;->c(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/appbrain/n/b;->e:J

    invoke-static {}, Lcom/appbrain/a/l1;->d()Lcom/appbrain/a/l1;

    const-string p1, "medbarefti"

    const-wide/32 p2, 0xea60

    invoke-static {p1, p2, p3}, Lcom/appbrain/a/l1;->c(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/appbrain/n/b;->f:J

    return-void
.end method

.method static synthetic a(Lcom/appbrain/n/b;Lcom/appbrain/n/a$b;)Lcom/appbrain/n/a$b;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/n/b;->i:Lcom/appbrain/n/a$b;

    return-object p1
.end method

.method public static b(Landroid/content/Context;Lcom/appbrain/b;Lcom/appbrain/n/b$h;)Lcom/appbrain/n/b;
    .locals 2

    invoke-static {}, Lcom/appbrain/n/i;->b()Lcom/appbrain/n/i;

    move-result-object v0

    sget-object v1, Lcom/appbrain/t/l$a;->d:Lcom/appbrain/t/l$a;

    invoke-virtual {v0, p1, v1}, Lcom/appbrain/n/i;->c(Lcom/appbrain/b;Lcom/appbrain/t/l$a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/appbrain/n/b;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/appbrain/n/b;-><init>(Landroid/content/Context;Lcom/appbrain/b;Ljava/lang/String;Lcom/appbrain/n/b$h;)V

    invoke-static {}, Lcom/appbrain/n/g;->b()Lcom/appbrain/n/g;

    move-result-object p0

    iget-object p1, v1, Lcom/appbrain/n/b;->b:Lcom/appbrain/b;

    sget-object p2, Lcom/appbrain/t/l$a;->d:Lcom/appbrain/t/l$a;

    new-instance v0, Lcom/appbrain/n/b$a;

    invoke-direct {v0, v1}, Lcom/appbrain/n/b$a;-><init>(Lcom/appbrain/n/b;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/appbrain/n/g;->c(Lcom/appbrain/b;Lcom/appbrain/t/l$a;Lcom/appbrain/o/o0;)V

    return-object v1
.end method

.method static synthetic c(Lcom/appbrain/n/b;Lcom/appbrain/p/e;Lcom/appbrain/n/h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appbrain/n/b;->d(Lcom/appbrain/p/e;Lcom/appbrain/n/h;)V

    return-void
.end method

.method private d(Lcom/appbrain/p/e;Lcom/appbrain/n/h;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to load mediated banner from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appbrain/p/e;->M()Lcom/appbrain/p/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "AppBrain"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/appbrain/n/i;->b()Lcom/appbrain/n/i;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/n/b;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/appbrain/p/e;->N()Lcom/appbrain/q/j;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lcom/appbrain/n/i;->i(Ljava/lang/String;Lcom/appbrain/q/j;Lcom/appbrain/n/h;)V

    invoke-direct {p0}, Lcom/appbrain/n/b;->o()V

    return-void
.end method

.method static synthetic f(Lcom/appbrain/n/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/appbrain/n/b;->l:Z

    return p0
.end method

.method static synthetic g(Lcom/appbrain/n/b;)Lcom/appbrain/b;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/n/b;->b:Lcom/appbrain/b;

    return-object p0
.end method

.method static synthetic i(Lcom/appbrain/n/b;)Lcom/appbrain/n/b$h;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/n/b;->d:Lcom/appbrain/n/b$h;

    return-object p0
.end method

.method static synthetic k(Lcom/appbrain/n/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/n/b;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lcom/appbrain/n/b;)Lcom/appbrain/n/j;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/n/b;->g:Lcom/appbrain/n/j;

    return-object p0
.end method

.method static synthetic n()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appbrain/n/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method private o()V
    .locals 6

    iget-object v0, p0, Lcom/appbrain/n/b;->i:Lcom/appbrain/n/a$b;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/appbrain/n/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appbrain/n/b$f;

    invoke-static {v1}, Lcom/appbrain/n/b$f;->a(Lcom/appbrain/n/b$f;)Lcom/appbrain/n/b$g;

    move-result-object v1

    sget-object v2, Lcom/appbrain/n/b$g;->b:Lcom/appbrain/n/b$g;

    if-ne v1, v2, :cond_1

    return-void

    :cond_2
    iget-object v0, p0, Lcom/appbrain/n/b;->g:Lcom/appbrain/n/j;

    invoke-virtual {v0}, Lcom/appbrain/n/j;->a()Lcom/appbrain/p/e;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/appbrain/n/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appbrain/n/b$f;

    invoke-static {v2}, Lcom/appbrain/n/b$f;->a(Lcom/appbrain/n/b$f;)Lcom/appbrain/n/b$g;

    move-result-object v2

    sget-object v4, Lcom/appbrain/n/b$g;->c:Lcom/appbrain/n/b$g;

    if-ne v2, v4, :cond_3

    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_6

    iget-boolean v0, p0, Lcom/appbrain/n/b;->k:Z

    if-nez v0, :cond_5

    iput-boolean v3, p0, Lcom/appbrain/n/b;->k:Z

    invoke-static {}, Lcom/appbrain/a/l1;->d()Lcom/appbrain/a/l1;

    const-wide/16 v0, 0x1388

    const-string v2, "medbawati"

    invoke-static {v2, v0, v1}, Lcom/appbrain/a/l1;->c(Ljava/lang/String;J)J

    move-result-wide v0

    new-instance v2, Lcom/appbrain/n/b$c;

    invoke-direct {v2, p0}, Lcom/appbrain/n/b$c;-><init>(Lcom/appbrain/n/b;)V

    invoke-static {v2, v0, v1}, Lcom/appbrain/o/j;->d(Ljava/lang/Runnable;J)V

    :cond_5
    return-void

    :cond_6
    invoke-direct {p0}, Lcom/appbrain/n/b;->r()V

    return-void

    :cond_7
    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Loading mediated banner from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/appbrain/p/e;->M()Lcom/appbrain/p/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppBrain"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/appbrain/n/a;->e(Lcom/appbrain/p/e;)Lcom/appbrain/n/a$b;

    move-result-object v2

    if-nez v2, :cond_8

    sget-object v1, Lcom/appbrain/n/h;->c:Lcom/appbrain/n/h;

    invoke-direct {p0, v0, v1}, Lcom/appbrain/n/b;->d(Lcom/appbrain/p/e;Lcom/appbrain/n/h;)V

    return-void

    :cond_8
    iget-boolean v3, p0, Lcom/appbrain/n/b;->j:Z

    invoke-static {v0, v3}, Lcom/appbrain/n/a;->d(Lcom/appbrain/p/e;Z)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/appbrain/n/b$f;

    invoke-direct {v4, v2, v1}, Lcom/appbrain/n/b$f;-><init>(Lcom/appbrain/n/a$b;B)V

    iget-object v1, p0, Lcom/appbrain/n/b;->h:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/appbrain/n/b$d;

    invoke-direct {v1, p0, v4, v0}, Lcom/appbrain/n/b$d;-><init>(Lcom/appbrain/n/b;Lcom/appbrain/n/b$f;Lcom/appbrain/p/e;)V

    iget-object v5, p0, Lcom/appbrain/n/b;->a:Landroid/content/Context;

    invoke-virtual {v2, v5, v3, v1}, Lcom/appbrain/n/a$b;->b(Landroid/content/Context;Ljava/lang/String;Lcom/appbrain/mediation/AppBrainBannerAdapter$a;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {v4}, Lcom/appbrain/n/b$f;->d(Lcom/appbrain/n/b$f;)V

    sget-object v1, Lcom/appbrain/n/h;->e:Lcom/appbrain/n/h;

    invoke-direct {p0, v0, v1}, Lcom/appbrain/n/b;->d(Lcom/appbrain/p/e;Lcom/appbrain/n/h;)V

    return-void

    :cond_9
    new-instance v1, Lcom/appbrain/n/b$b;

    invoke-direct {v1, p0, v4, v0}, Lcom/appbrain/n/b$b;-><init>(Lcom/appbrain/n/b;Lcom/appbrain/n/b$f;Lcom/appbrain/p/e;)V

    iget-wide v2, p0, Lcom/appbrain/n/b;->e:J

    invoke-static {v1, v2, v3}, Lcom/appbrain/o/j;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static synthetic p(Lcom/appbrain/n/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/n/b;->o()V

    return-void
.end method

.method static synthetic q(Lcom/appbrain/n/b;)Lcom/appbrain/n/a$b;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/n/b;->i:Lcom/appbrain/n/a$b;

    return-object p0
.end method

.method private r()V
    .locals 2

    invoke-static {}, Lcom/appbrain/n/i;->b()Lcom/appbrain/n/i;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/n/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appbrain/n/i;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appbrain/n/b;->d:Lcom/appbrain/n/b$h;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/appbrain/n/b$h;->d(Landroid/view/View;)V

    return-void
.end method

.method private s()V
    .locals 4

    iget-object v0, p0, Lcom/appbrain/n/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appbrain/n/b$f;

    invoke-static {v1}, Lcom/appbrain/n/b$f;->a(Lcom/appbrain/n/b$f;)Lcom/appbrain/n/b$g;

    move-result-object v2

    sget-object v3, Lcom/appbrain/n/b$g;->b:Lcom/appbrain/n/b$g;

    if-eq v2, v3, :cond_1

    invoke-static {v1}, Lcom/appbrain/n/b$f;->a(Lcom/appbrain/n/b$f;)Lcom/appbrain/n/b$g;

    move-result-object v2

    sget-object v3, Lcom/appbrain/n/b$g;->c:Lcom/appbrain/n/b$g;

    if-ne v2, v3, :cond_0

    :cond_1
    invoke-static {v1}, Lcom/appbrain/n/b$f;->d(Lcom/appbrain/n/b$f;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/appbrain/n/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method static synthetic t(Lcom/appbrain/n/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/n/b;->r()V

    return-void
.end method

.method static synthetic u(Lcom/appbrain/n/b;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appbrain/n/b;->j:Z

    return v0
.end method

.method static synthetic v(Lcom/appbrain/n/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/n/b;->s()V

    return-void
.end method

.method static synthetic w(Lcom/appbrain/n/b;)J
    .locals 2

    iget-wide v0, p0, Lcom/appbrain/n/b;->f:J

    return-wide v0
.end method

.method static synthetic x(Lcom/appbrain/n/b;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/n/b;->m:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/appbrain/n/b;->i:Lcom/appbrain/n/a$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/n/b;->i:Lcom/appbrain/n/a$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appbrain/n/a$b;->c()V

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/n/b;->i:Lcom/appbrain/n/a$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appbrain/n/a$b;->d()V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/n/b;->i:Lcom/appbrain/n/a$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appbrain/n/a$b;->e()V

    invoke-static {}, Lcom/appbrain/n/i;->b()Lcom/appbrain/n/i;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/n/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appbrain/n/i;->u(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/appbrain/n/b;->s()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appbrain/n/b;->l:Z

    return-void
.end method
