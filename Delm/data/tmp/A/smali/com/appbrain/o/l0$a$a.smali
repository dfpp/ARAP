.class final Lcom/appbrain/o/l0$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/o/o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/o/l0$a;->k()Lcom/appbrain/o/l0$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Exchanger;


# direct methods
.method constructor <init>(Lcom/appbrain/o/l0$a;Ljava/util/concurrent/Exchanger;)V
    .locals 0

    iput-object p2, p0, Lcom/appbrain/o/l0$a$a;->a:Ljava/util/concurrent/Exchanger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, [B

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/o/l0$a$a;->a:Ljava/util/concurrent/Exchanger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/Exchanger;->exchange(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method
