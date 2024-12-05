.class public final Lcom/appbrain/u/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/u/d$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/appbrain/u/d$a;

.field private final b:Lcom/appbrain/u/d$a;


# direct methods
.method public constructor <init>(Lcom/appbrain/u/d$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appbrain/u/d;->a:Lcom/appbrain/u/d$a;

    new-instance p1, Lcom/appbrain/u/b;

    invoke-direct {p1}, Lcom/appbrain/u/b;-><init>()V

    iput-object p1, p0, Lcom/appbrain/u/d;->b:Lcom/appbrain/u/d$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/appbrain/v/b$a;)Lcom/appbrain/v/b$a;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/u/d;->a:Lcom/appbrain/u/d$a;

    invoke-interface {v0, p1}, Lcom/appbrain/u/d$a;->a(Lcom/appbrain/v/b$a;)Lcom/appbrain/v/b$a;

    return-object p1
.end method

.method public final b(Lcom/appbrain/v/b;)V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/u/d;->b:Lcom/appbrain/u/d$a;

    invoke-interface {v0, p1}, Lcom/appbrain/u/d$a;->b(Lcom/appbrain/v/b;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/u/d;->a:Lcom/appbrain/u/d$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
