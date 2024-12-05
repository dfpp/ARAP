.class final Lcom/appbrain/n/b$f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/n/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private final a:Lcom/appbrain/n/a$b;

.field private b:Lcom/appbrain/n/b$g;


# direct methods
.method private constructor <init>(Lcom/appbrain/n/a$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/appbrain/n/b$g;->b:Lcom/appbrain/n/b$g;

    iput-object v0, p0, Lcom/appbrain/n/b$f;->b:Lcom/appbrain/n/b$g;

    iput-object p1, p0, Lcom/appbrain/n/b$f;->a:Lcom/appbrain/n/a$b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/appbrain/n/a$b;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appbrain/n/b$f;-><init>(Lcom/appbrain/n/a$b;)V

    return-void
.end method

.method static synthetic a(Lcom/appbrain/n/b$f;)Lcom/appbrain/n/b$g;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/n/b$f;->b:Lcom/appbrain/n/b$g;

    return-object p0
.end method

.method static synthetic b(Lcom/appbrain/n/b$f;Lcom/appbrain/n/b$g;)Lcom/appbrain/n/b$g;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/n/b$f;->b:Lcom/appbrain/n/b$g;

    return-object p1
.end method

.method static synthetic c(Lcom/appbrain/n/b$f;)Lcom/appbrain/n/a$b;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/n/b$f;->a:Lcom/appbrain/n/a$b;

    return-object p0
.end method

.method static synthetic d(Lcom/appbrain/n/b$f;)V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/n/b$f;->a:Lcom/appbrain/n/a$b;

    invoke-virtual {v0}, Lcom/appbrain/n/a$b;->e()V

    sget-object v0, Lcom/appbrain/n/b$g;->e:Lcom/appbrain/n/b$g;

    iput-object v0, p0, Lcom/appbrain/n/b$f;->b:Lcom/appbrain/n/b$g;

    return-void
.end method
