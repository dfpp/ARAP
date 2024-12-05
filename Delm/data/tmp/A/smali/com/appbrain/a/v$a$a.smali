.class public final Lcom/appbrain/a/v$a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/v$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a/v$a$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/appbrain/a/v$a$a;)I
    .locals 0

    iget p0, p0, Lcom/appbrain/a/v$a$a;->a:I

    return p0
.end method

.method static synthetic e(Lcom/appbrain/a/v$a$a;)I
    .locals 0

    iget p0, p0, Lcom/appbrain/a/v$a$a;->b:I

    return p0
.end method

.method static synthetic g(Lcom/appbrain/a/v$a$a;)I
    .locals 0

    iget p0, p0, Lcom/appbrain/a/v$a$a;->c:I

    return p0
.end method

.method static synthetic h(Lcom/appbrain/a/v$a$a;)I
    .locals 0

    iget p0, p0, Lcom/appbrain/a/v$a$a;->d:I

    return p0
.end method


# virtual methods
.method public final b(I)Lcom/appbrain/a/v$a$a;
    .locals 0

    iput p1, p0, Lcom/appbrain/a/v$a$a;->d:I

    return-object p0
.end method

.method public final c(II)Lcom/appbrain/a/v$a$a;
    .locals 0

    iput p1, p0, Lcom/appbrain/a/v$a$a;->a:I

    iput p2, p0, Lcom/appbrain/a/v$a$a;->b:I

    return-object p0
.end method

.method public final d()Lcom/appbrain/a/v$a;
    .locals 2

    new-instance v0, Lcom/appbrain/a/v$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appbrain/a/v$a;-><init>(Lcom/appbrain/a/v$a$a;B)V

    return-object v0
.end method

.method public final f(I)Lcom/appbrain/a/v$a$a;
    .locals 0

    iput p1, p0, Lcom/appbrain/a/v$a$a;->c:I

    return-object p0
.end method
