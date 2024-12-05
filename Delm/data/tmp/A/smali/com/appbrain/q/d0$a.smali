.class final Lcom/appbrain/q/d0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/q/d0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/q/d0;->a(Lcom/appbrain/q/j;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appbrain/q/j;


# direct methods
.method constructor <init>(Lcom/appbrain/q/j;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/q/d0$a;->a:Lcom/appbrain/q/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/appbrain/q/d0$a;->a:Lcom/appbrain/q/j;

    invoke-virtual {v0}, Lcom/appbrain/q/j;->q()I

    move-result v0

    return v0
.end method

.method public final c(I)B
    .locals 1

    iget-object v0, p0, Lcom/appbrain/q/d0$a;->a:Lcom/appbrain/q/j;

    invoke-virtual {v0, p1}, Lcom/appbrain/q/j;->e(I)B

    move-result p1

    return p1
.end method
