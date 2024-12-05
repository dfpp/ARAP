.class final Lcom/appbrain/n/d$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/n/d;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/n/d;


# direct methods
.method constructor <init>(Lcom/appbrain/n/d;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/n/d$b;->b:Lcom/appbrain/n/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/n/d$b;->b:Lcom/appbrain/n/d;

    invoke-static {v0}, Lcom/appbrain/n/d;->c(Lcom/appbrain/n/d;)V

    return-void
.end method
