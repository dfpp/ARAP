.class Lcom/gkapps/translate/sden/StartTranslator$j;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gkapps/translate/sden/StartTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/gkapps/translate/sden/StartTranslator;


# direct methods
.method private constructor <init>(Lcom/gkapps/translate/sden/StartTranslator;)V
    .locals 1

    iput-object p1, p0, Lcom/gkapps/translate/sden/StartTranslator$j;->a:Lcom/gkapps/translate/sden/StartTranslator;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance p1, Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator$j;->a:Lcom/gkapps/translate/sden/StartTranslator;

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gkapps/translate/sden/StartTranslator;Lcom/gkapps/translate/sden/StartTranslator$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/gkapps/translate/sden/StartTranslator$j;-><init>(Lcom/gkapps/translate/sden/StartTranslator;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/gkapps/translate/sden/StartTranslator$j;->a:Lcom/gkapps/translate/sden/StartTranslator;

    invoke-virtual {p1}, Lcom/gkapps/translate/sden/StartTranslator;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/gkapps/translate/sden/StartTranslator$j;->a:Lcom/gkapps/translate/sden/StartTranslator;

    const v0, 0x7f070036

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lcom/gkapps/translate/sden/StartTranslator$j;->a:Lcom/gkapps/translate/sden/StartTranslator;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v0, "To English"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/gkapps/translate/sden/StartTranslator$j;->a:Lcom/gkapps/translate/sden/StartTranslator;

    const v0, 0x7f070055

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator$j;->a:Lcom/gkapps/translate/sden/StartTranslator;

    iget-object v0, v0, Lcom/gkapps/translate/sden/StartTranslator;->i:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/gkapps/translate/sden/StartTranslator$j;->a:Lcom/gkapps/translate/sden/StartTranslator;

    iget v0, p1, Lcom/gkapps/translate/sden/StartTranslator;->m:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/gkapps/translate/sden/StartTranslator;->m:I

    iget-object p1, p0, Lcom/gkapps/translate/sden/StartTranslator$j;->a:Lcom/gkapps/translate/sden/StartTranslator;

    iput v1, p1, Lcom/gkapps/translate/sden/StartTranslator;->l:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    iget-object p1, p0, Lcom/gkapps/translate/sden/StartTranslator$j;->a:Lcom/gkapps/translate/sden/StartTranslator;

    iget-boolean v0, p1, Lcom/gkapps/translate/sden/StartTranslator;->q:Z

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {p1}, Lcom/gkapps/translate/sden/StartTranslator;->e(Lcom/gkapps/translate/sden/StartTranslator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    :try_start_2
    new-instance p1, Lcom/gkapps/translate/sden/StartTranslator$k;

    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator$j;->a:Lcom/gkapps/translate/sden/StartTranslator;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/gkapps/translate/sden/StartTranslator$k;-><init>(Lcom/gkapps/translate/sden/StartTranslator;Lcom/gkapps/translate/sden/StartTranslator$b;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

.method protected varargs c([Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/gkapps/translate/sden/StartTranslator$j;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/gkapps/translate/sden/StartTranslator$j;->b(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator$j;->a:Lcom/gkapps/translate/sden/StartTranslator;

    const v1, 0x7f070036

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator$j;->a:Lcom/gkapps/translate/sden/StartTranslator;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "Translating"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/gkapps/translate/sden/StartTranslator$j;->c([Ljava/lang/Void;)V

    return-void
.end method
