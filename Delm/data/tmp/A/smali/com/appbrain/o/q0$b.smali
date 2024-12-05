.class final Lcom/appbrain/o/q0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/o/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/o/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/appbrain/o/h0;->a(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.vending"

    invoke-static {v0}, Lcom/appbrain/o/j0;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
