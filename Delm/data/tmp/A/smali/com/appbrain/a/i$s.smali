.class public final Lcom/appbrain/a/i$s;
.super Lcom/appbrain/a/i$h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "s"
.end annotation


# instance fields
.field public final d:Lcom/appbrain/a/i$e;

.field public final e:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/appbrain/a/i$e;Ljava/lang/String;Lcom/appbrain/a/i$j;II)V
    .locals 0

    invoke-direct {p0, p4, p5, p3}, Lcom/appbrain/a/i$h;-><init>(IILcom/appbrain/a/i$j;)V

    iput-object p1, p0, Lcom/appbrain/a/i$s;->d:Lcom/appbrain/a/i$e;

    iput-object p2, p0, Lcom/appbrain/a/i$s;->e:Ljava/lang/String;

    return-void
.end method
