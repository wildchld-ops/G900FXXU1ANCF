.class public Lcom/diotek/ime/implement/setting/GestureGuide;
.super Landroid/app/Activity;
.source "GestureGuide.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private adjustText(Landroid/widget/TextView;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setAdjustText()V
    .locals 1

    const v0, 0x7f080080

    invoke-virtual {p0, v0}, Lcom/diotek/ime/implement/setting/GestureGuide;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/setting/GestureGuide;->adjustText(Landroid/widget/TextView;)V

    const v0, 0x7f080081

    invoke-virtual {p0, v0}, Lcom/diotek/ime/implement/setting/GestureGuide;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/setting/GestureGuide;->adjustText(Landroid/widget/TextView;)V

    const v0, 0x7f080082

    invoke-virtual {p0, v0}, Lcom/diotek/ime/implement/setting/GestureGuide;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/setting/GestureGuide;->adjustText(Landroid/widget/TextView;)V

    const v0, 0x7f080084

    invoke-virtual {p0, v0}, Lcom/diotek/ime/implement/setting/GestureGuide;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/setting/GestureGuide;->adjustText(Landroid/widget/TextView;)V

    const v0, 0x7f080083

    invoke-virtual {p0, v0}, Lcom/diotek/ime/implement/setting/GestureGuide;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/setting/GestureGuide;->adjustText(Landroid/widget/TextView;)V

    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Lcom/diotek/ime/implement/setting/GestureGuide;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/setting/GestureGuide;->adjustText(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/GestureGuide;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/implement/setting/GestureGuide;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f03004c

    invoke-virtual {p0, v1}, Lcom/diotek/ime/implement/setting/GestureGuide;->setContentView(I)V

    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/GestureGuide;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/GestureGuide;->setAdjustText()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/GestureGuide;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
