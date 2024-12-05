.class public final Lcom/appbrain/a/v$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/appbrain/a/v$a;

.field private b:Lcom/appbrain/a/v$a;

.field private c:Lcom/appbrain/a/v$a;

.field private d:Lcom/appbrain/a/v$a;

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appbrain/a/v$b;->e:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a/v$b;-><init>()V

    return-void
.end method

.method static synthetic b(Lcom/appbrain/a/v$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/v$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/appbrain/a/v$b;)Lcom/appbrain/a/v$a;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/v$b;->a:Lcom/appbrain/a/v$a;

    return-object p0
.end method

.method static synthetic e(Lcom/appbrain/a/v$b;)Lcom/appbrain/a/v$a;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/v$b;->b:Lcom/appbrain/a/v$a;

    return-object p0
.end method

.method static synthetic g(Lcom/appbrain/a/v$b;)Lcom/appbrain/a/v$a;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/v$b;->c:Lcom/appbrain/a/v$a;

    return-object p0
.end method

.method static synthetic i(Lcom/appbrain/a/v$b;)Lcom/appbrain/a/v$a;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/v$b;->d:Lcom/appbrain/a/v$a;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/appbrain/a/v$a;)Lcom/appbrain/a/v$b;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/v$b;->a:Lcom/appbrain/a/v$a;

    return-object p0
.end method

.method public final d(Lcom/appbrain/a/v$a;)Lcom/appbrain/a/v$b;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/v$b;->b:Lcom/appbrain/a/v$a;

    return-object p0
.end method

.method public final f(Lcom/appbrain/a/v$a;)Lcom/appbrain/a/v$b;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/v$b;->c:Lcom/appbrain/a/v$a;

    return-object p0
.end method

.method public final h(Lcom/appbrain/a/v$a;)Lcom/appbrain/a/v$b;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/v$b;->d:Lcom/appbrain/a/v$a;

    return-object p0
.end method
