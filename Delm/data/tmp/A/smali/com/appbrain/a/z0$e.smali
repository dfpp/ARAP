.class public final Lcom/appbrain/a/z0$e;
.super Landroid/app/DialogFragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private b:Lcom/appbrain/t/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/FragmentManager;Lcom/appbrain/t/u;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/appbrain/q/a;->h()[B

    move-result-object v1

    const-string v2, "Alert"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    new-instance v1, Lcom/appbrain/a/z0$e;

    invoke-direct {v1}, Lcom/appbrain/a/z0$e;-><init>()V

    invoke-virtual {v1, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-static {p1}, Lcom/appbrain/a/z0;->a(Lcom/appbrain/t/u;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/appbrain/a/d1;->d(Landroid/app/FragmentManager;Landroid/app/DialogFragment;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    iget-object p1, p0, Lcom/appbrain/a/z0$e;->b:Lcom/appbrain/t/u;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/appbrain/a/b1;->d(Lcom/appbrain/t/u;Z)V

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "Alert"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/appbrain/t/u;->U([B)Lcom/appbrain/t/u;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/a/z0$e;->b:Lcom/appbrain/t/u;
    :try_end_0
    .catch Lcom/appbrain/q/t; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/appbrain/a/z0$e;->b:Lcom/appbrain/t/u;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/appbrain/t/u;->W()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lcom/appbrain/t/u;->Z()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/appbrain/t/u;->X()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/appbrain/t/u;->X()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/high16 v2, 0x1040000

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v3, Lcom/appbrain/a/z0$b;

    invoke-direct {v3, v0}, Lcom/appbrain/a/z0$b;-><init>(Lcom/appbrain/t/u;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p1, v0}, Lcom/appbrain/a/d1;->a(Landroid/content/Context;Lcom/appbrain/t/u;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/appbrain/a/z0$c;

    invoke-direct {v3, v0, p1}, Lcom/appbrain/a/z0$c;-><init>(Lcom/appbrain/t/u;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_1
    invoke-static {p1, v0}, Lcom/appbrain/a/d1;->a(Landroid/content/Context;Lcom/appbrain/t/u;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/appbrain/a/z0$d;

    invoke-direct {v2, v0}, Lcom/appbrain/a/z0$d;-><init>(Lcom/appbrain/t/u;)V

    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_2
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    iget-object v0, p0, Lcom/appbrain/a/z0$e;->b:Lcom/appbrain/t/u;

    invoke-static {v0}, Lcom/appbrain/a/b1;->e(Lcom/appbrain/t/u;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method
