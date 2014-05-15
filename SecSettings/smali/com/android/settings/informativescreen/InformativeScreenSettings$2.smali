.class Lcom/android/settings/informativescreen/InformativeScreenSettings$2;
.super Landroid/preference/Preference;
.source "InformativeScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/informativescreen/InformativeScreenSettings;->initPref()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/informativescreen/InformativeScreenSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/informativescreen/InformativeScreenSettings;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings$2;->this$0:Lcom/android/settings/informativescreen/InformativeScreenSettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings$2;->this$0:Lcom/android/settings/informativescreen/InformativeScreenSettings;

    invoke-virtual {v2}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->loadInformativeScreenTime()V

    const v2, 0x7f0b019e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings$2;->this$0:Lcom/android/settings/informativescreen/InformativeScreenSettings;

    #setter for: Lcom/android/settings/informativescreen/InformativeScreenSettings;->mTimeFromBtn:Landroid/widget/Button;
    invoke-static {v2, v0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->access$002(Lcom/android/settings/informativescreen/InformativeScreenSettings;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings$2;->this$0:Lcom/android/settings/informativescreen/InformativeScreenSettings;

    #getter for: Lcom/android/settings/informativescreen/InformativeScreenSettings;->mTimeFromBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->access$000(Lcom/android/settings/informativescreen/InformativeScreenSettings;)Landroid/widget/Button;

    move-result-object v5

    iget-object v2, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings$2;->this$0:Lcom/android/settings/informativescreen/InformativeScreenSettings;

    #getter for: Lcom/android/settings/informativescreen/InformativeScreenSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->access$100(Lcom/android/settings/informativescreen/InformativeScreenSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings$2;->this$0:Lcom/android/settings/informativescreen/InformativeScreenSettings;

    iget-object v5, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings$2;->this$0:Lcom/android/settings/informativescreen/InformativeScreenSettings;

    #getter for: Lcom/android/settings/informativescreen/InformativeScreenSettings;->mStarthour:I
    invoke-static {v5}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->access$200(Lcom/android/settings/informativescreen/InformativeScreenSettings;)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings$2;->this$0:Lcom/android/settings/informativescreen/InformativeScreenSettings;

    #getter for: Lcom/android/settings/informativescreen/InformativeScreenSettings;->mStartmin:I
    invoke-static {v6}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->access$300(Lcom/android/settings/informativescreen/InformativeScreenSettings;)I

    move-result v6

    #calls: Lcom/android/settings/informativescreen/InformativeScreenSettings;->setStartTime(II)V
    invoke-static {v2, v5, v6}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->access$400(Lcom/android/settings/informativescreen/InformativeScreenSettings;II)V

    iget-object v2, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings$2;->this$0:Lcom/android/settings/informativescreen/InformativeScreenSettings;

    #getter for: Lcom/android/settings/informativescreen/InformativeScreenSettings;->mTimeFromBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->access$000(Lcom/android/settings/informativescreen/InformativeScreenSettings;)Landroid/widget/Button;

    move-result-object v2

    new-instance v5, Lcom/android/settings/informativescreen/InformativeScreenSettings$2$1;

    invoke-direct {v5, p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings$2$1;-><init>(Lcom/android/settings/informativescreen/InformativeScreenSettings$2;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0b01a0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings$2;->this$0:Lcom/android/settings/informativescreen/InformativeScreenSettings;

    #setter for: Lcom/android/settings/informativescreen/InformativeScreenSettings;->mTimeToBtn:Landroid/widget/Button;
    invoke-static {v2, v1}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->access$702(Lcom/android/settings/informativescreen/InformativeScreenSettings;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings$2;->this$0:Lcom/android/settings/informativescreen/InformativeScreenSettings;

    #getter for: Lcom/android/settings/informativescreen/InformativeScreenSettings;->mTimeToBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->access$700(Lcom/android/settings/informativescreen/InformativeScreenSettings;)Landroid/widget/Button;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings$2;->this$0:Lcom/android/settings/informativescreen/InformativeScreenSettings;

    #getter for: Lcom/android/settings/informativescreen/InformativeScreenSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->access$100(Lcom/android/settings/informativescreen/InformativeScreenSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings$2;->this$0:Lcom/android/settings/informativescreen/InformativeScreenSettings;

    iget-object v3, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings$2;->this$0:Lcom/android/settings/informativescreen/InformativeScreenSettings;

    #getter for: Lcom/android/settings/informativescreen/InformativeScreenSettings;->mEndhour:I
    invoke-static {v3}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->access$800(Lcom/android/settings/informativescreen/InformativeScreenSettings;)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings$2;->this$0:Lcom/android/settings/informativescreen/InformativeScreenSettings;

    #getter for: Lcom/android/settings/informativescreen/InformativeScreenSettings;->mEndmin:I
    invoke-static {v4}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->access$900(Lcom/android/settings/informativescreen/InformativeScreenSettings;)I

    move-result v4

    #calls: Lcom/android/settings/informativescreen/InformativeScreenSettings;->setEndTime(II)V
    invoke-static {v2, v3, v4}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->access$1000(Lcom/android/settings/informativescreen/InformativeScreenSettings;II)V

    iget-object v2, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings$2;->this$0:Lcom/android/settings/informativescreen/InformativeScreenSettings;

    #getter for: Lcom/android/settings/informativescreen/InformativeScreenSettings;->mTimeToBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->access$700(Lcom/android/settings/informativescreen/InformativeScreenSettings;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/android/settings/informativescreen/InformativeScreenSettings$2$2;

    invoke-direct {v3, p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings$2$2;-><init>(Lcom/android/settings/informativescreen/InformativeScreenSettings$2;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method
