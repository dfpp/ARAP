.class public final Lcom/appbrain/a/i$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appbrain/a/i$e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/appbrain/a/i$e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/appbrain/a/i$e;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/appbrain/a/i$e;->d:Landroid/view/View$OnClickListener;

    return-void
.end method
