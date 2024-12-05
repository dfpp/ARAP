.class public final Lcom/appbrain/a/i$m;
.super Lcom/appbrain/a/i$h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/appbrain/a/i$j;IILandroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0, p4, p5, p3}, Lcom/appbrain/a/i$h;-><init>(IILcom/appbrain/a/i$j;)V

    iput-object p1, p0, Lcom/appbrain/a/i$m;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/appbrain/a/i$m;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/appbrain/a/i$m;->f:Landroid/view/View$OnClickListener;

    return-void
.end method
