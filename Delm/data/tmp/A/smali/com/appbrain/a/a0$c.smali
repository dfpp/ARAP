.class final Lcom/appbrain/a/a0$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/a/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method private constructor <init>(Landroid/app/Activity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/a/a0$c;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/appbrain/a/a0$c;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;ZB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appbrain/a/a0$c;-><init>(Landroid/app/Activity;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/appbrain/t/q;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/appbrain/a/a0$c;->b:Z

    invoke-virtual {p1}, Lcom/appbrain/t/q;->c0()Lcom/appbrain/t/q$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appbrain/t/q$a;->M()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/appbrain/a/a0$c;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/appbrain/t/q;->c0()Lcom/appbrain/t/q$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appbrain/t/q$a;->L()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
