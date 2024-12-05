.class public final Lcom/appbrain/o/p$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/o/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/appbrain/o/p$b;

.field private i:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appbrain/o/p$a;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appbrain/o/p$a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/appbrain/o/p$a;I)I
    .locals 0

    iput p1, p0, Lcom/appbrain/o/p$a;->c:I

    return p1
.end method

.method static synthetic e(Lcom/appbrain/o/p$a;Lcom/appbrain/o/p$b;)Lcom/appbrain/o/p$b;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/o/p$a;->h:Lcom/appbrain/o/p$b;

    return-object p1
.end method

.method static synthetic f(Lcom/appbrain/o/p$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/o/p$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/appbrain/o/p$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/o/p$a;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Lcom/appbrain/o/p$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/appbrain/o/p$a;->d:Z

    return p1
.end method

.method static synthetic k(Lcom/appbrain/o/p$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/o/p$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcom/appbrain/o/p$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/o/p$a;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic m(Lcom/appbrain/o/p$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/appbrain/o/p$a;->i:Z

    return p1
.end method

.method static synthetic n(Lcom/appbrain/o/p$a;)I
    .locals 0

    iget p0, p0, Lcom/appbrain/o/p$a;->c:I

    return p0
.end method

.method static synthetic p(Lcom/appbrain/o/p$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/o/p$a;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic q(Lcom/appbrain/o/p$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/o/p$a;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic r(Lcom/appbrain/o/p$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/appbrain/o/p$a;->d:Z

    return p0
.end method

.method static synthetic s(Lcom/appbrain/o/p$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/o/p$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic t(Lcom/appbrain/o/p$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/o/p$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic u(Lcom/appbrain/o/p$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/o/p$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic v(Lcom/appbrain/o/p$a;)Lcom/appbrain/o/p$b;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/o/p$a;->h:Lcom/appbrain/o/p$b;

    return-object p0
.end method

.method static synthetic w(Lcom/appbrain/o/p$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/appbrain/o/p$a;->i:Z

    return p0
.end method


# virtual methods
.method public final b()Lcom/appbrain/o/p$a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appbrain/o/p$a;->d:Z

    return-object p0
.end method

.method public final c(I)Lcom/appbrain/o/p$a;
    .locals 0

    iput p1, p0, Lcom/appbrain/o/p$a;->c:I

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/appbrain/o/p$a;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/o/p$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final i(Ljava/lang/String;)Lcom/appbrain/o/p$a;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/o/p$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final j()Lcom/appbrain/o/p;
    .locals 2

    new-instance v0, Lcom/appbrain/o/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appbrain/o/p;-><init>(Lcom/appbrain/o/p$a;B)V

    return-object v0
.end method

.method public final o(Ljava/lang/String;)Lcom/appbrain/o/p$a;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/o/p$a;->f:Ljava/lang/String;

    return-object p0
.end method
