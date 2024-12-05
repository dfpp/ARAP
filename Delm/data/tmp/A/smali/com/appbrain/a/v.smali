.class public final Lcom/appbrain/a/v;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/a/v$b;,
        Lcom/appbrain/a/v$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/appbrain/a/v$a;

.field public final b:Lcom/appbrain/a/v$a;

.field public final c:Lcom/appbrain/a/v$a;

.field public final d:Lcom/appbrain/a/v$a;


# direct methods
.method private constructor <init>(Lcom/appbrain/a/v$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/appbrain/a/v$b;->b(Lcom/appbrain/a/v$b;)Ljava/lang/String;

    invoke-static {p1}, Lcom/appbrain/a/v$b;->c(Lcom/appbrain/a/v$b;)Lcom/appbrain/a/v$a;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/v;->a:Lcom/appbrain/a/v$a;

    invoke-static {p1}, Lcom/appbrain/a/v$b;->e(Lcom/appbrain/a/v$b;)Lcom/appbrain/a/v$a;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/v;->b:Lcom/appbrain/a/v$a;

    invoke-static {p1}, Lcom/appbrain/a/v$b;->g(Lcom/appbrain/a/v$b;)Lcom/appbrain/a/v$a;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/v;->c:Lcom/appbrain/a/v$a;

    invoke-static {p1}, Lcom/appbrain/a/v$b;->i(Lcom/appbrain/a/v$b;)Lcom/appbrain/a/v$a;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/a/v;->d:Lcom/appbrain/a/v$a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/appbrain/a/v$b;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appbrain/a/v;-><init>(Lcom/appbrain/a/v$b;)V

    return-void
.end method

.method public static a()Lcom/appbrain/a/v$a$a;
    .locals 2

    new-instance v0, Lcom/appbrain/a/v$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appbrain/a/v$a$a;-><init>(B)V

    return-object v0
.end method
