.class final Lcom/appbrain/o/i0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/o/i0;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/o/i0;


# direct methods
.method constructor <init>(Lcom/appbrain/o/i0;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/o/i0$b;->b:Lcom/appbrain/o/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/o/i0$b;->b:Lcom/appbrain/o/i0;

    invoke-static {v0}, Lcom/appbrain/o/i0;->b(Lcom/appbrain/o/i0;)Lcom/appbrain/o/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/appbrain/o/o;->a()Ljava/lang/Object;

    return-void
.end method
