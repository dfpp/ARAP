.class public abstract Lcom/appbrain/o/q;
.super Lcom/appbrain/o/r;
.source ""


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-wide/32 v0, 0x5265c00

    invoke-direct {p0, p2, v0, v1}, Lcom/appbrain/o/r;-><init>(Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/appbrain/o/q;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/appbrain/o/q;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic b(Lcom/appbrain/o/k0;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/o/q;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/appbrain/o/q;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/o/k0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic d(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/appbrain/o/q;->g:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
