.class final Lcom/appbrain/a/k0$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/a/k0;


# direct methods
.method constructor <init>(Lcom/appbrain/a/k0;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/k0$e;->b:Lcom/appbrain/a/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/appbrain/a/k0$e;->b:Lcom/appbrain/a/k0;

    invoke-static {p1}, Lcom/appbrain/a/k0;->D(Lcom/appbrain/a/k0;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    return-void
.end method
