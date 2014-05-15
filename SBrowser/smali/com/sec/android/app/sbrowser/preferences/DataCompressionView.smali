.class public Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;
.super Landroid/preference/Preference;
.source "DataCompressionView.java"


# instance fields
.field mComText:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field mOriText:Ljava/lang/String;

.field mPercentText:Ljava/lang/String;

.field mPreview:Landroid/widget/TextView;

.field mSavingsText:Ljava/lang/String;

.field protected mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

.field mView:Landroid/view/View;

.field mViewgroup:Landroid/view/View;

.field resetButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->mContext:Landroid/content/Context;

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    const v0, 0x7f02015a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->setLayoutResource(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->getDataCompressionPercent()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->mPercentText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->mSavingsText:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->getDataCompressionOriginalSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0188

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->mOriText:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->getDataCompressionCompressedSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0189

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->mComText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDataCompressionCheck()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getDataCompressionCheck()Z

    move-result v0

    return v0
.end method

.method public getDataCompressionCompressedSize()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getDataCompressionCompressedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataCompressionOriginalSize()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getDataCompressionOriginalSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataCompressionPercent()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getDataCompressionPercent()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6

    const/16 v5, -0x5e00

    const v4, -0xa0a0b

    const v3, -0x72635d

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->getDataCompressionCheck()Z

    move-result v0

    const v2, 0x7f0a02c3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->mPercentText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    const v2, 0x7f0a02c4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->mSavingsText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    const v2, 0x7f0a02c5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->mOriText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_2

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    const v2, 0x7f0a02c6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->mComText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_3

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    const v2, 0x7f0a02c7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->resetButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->resetButton:Landroid/widget/Button;

    new-instance v3, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView$1;-><init>(Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->resetButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_4
    return-void

    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->resetButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->mViewgroup:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->mViewgroup:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->mViewgroup:Landroid/view/View;

    return-object v0
.end method

.method public resetTurboData()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->resetTurboData()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->onBindView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public updateTurboData(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->updateTurboData(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->onBindView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
