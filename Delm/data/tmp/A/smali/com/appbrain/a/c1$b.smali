.class final Lcom/appbrain/a/c1$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/t/u;


# direct methods
.method constructor <init>(Lcom/appbrain/t/u;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/c1$b;->b:Lcom/appbrain/t/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/appbrain/a/c1$b;->b:Lcom/appbrain/t/u;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/appbrain/a/c1;->d(Lcom/appbrain/t/u;Z)V

    return-void
.end method
