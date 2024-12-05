.class final Lcom/appbrain/o/l$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/o/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/o/l;


# direct methods
.method constructor <init>(Lcom/appbrain/o/l;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/o/l$a;->b:Lcom/appbrain/o/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/o/l$a;->b:Lcom/appbrain/o/l;

    invoke-static {v0}, Lcom/appbrain/o/l;->b(Lcom/appbrain/o/l;)V

    return-void
.end method
