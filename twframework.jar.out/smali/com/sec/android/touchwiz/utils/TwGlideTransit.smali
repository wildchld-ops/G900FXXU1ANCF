.class public Lcom/sec/android/touchwiz/utils/TwGlideTransit;
.super Lcom/sec/android/touchwiz/utils/TwTransit;
.source "TwGlideTransit.java"


# static fields
.field private static final DURATION:J = 0x2eeL

.field private static final REVERSE_DURATION:J = 0x2eeL

.field private static final TWTRANSIT_ID_CONTENT_IMAGE:Ljava/lang/String; = "TwTransitIDContentImage"

.field private static final TWTRANSIT_ID_CONTENT_TEXT:Ljava/lang/String; = "TwTransitIDContentText"


# instance fields
.field mProgress:F


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/utils/TwTransit;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public bindActionBarLogoOut(Landroid/content/Intent;Landroid/view/View;)V
    .locals 4

    const-string v0, "TwTransitIdActionBarLogo"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "TwTransitActionNone"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->bindOut(Landroid/content/Intent;Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;)V

    const-string v0, "TwTransitTypeGlide"

    invoke-static {p1, v0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->setType(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public bindActionBarSubTitleOut(Landroid/content/Intent;Landroid/view/View;)V
    .locals 4

    const-string v0, "TwTransitIdActionBarSubTitle"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "TwTransitActionNone"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->bindOut(Landroid/content/Intent;Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;)V

    const-string v0, "TwTransitTypeGlide"

    invoke-static {p1, v0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->setType(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public bindActionBarTitleOut(Landroid/content/Intent;Landroid/view/View;)V
    .locals 4

    const-string v0, "TwTransitIdActionBarTitle"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "TwTransitActionNone"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->bindOut(Landroid/content/Intent;Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;)V

    const-string v0, "TwTransitTypeGlide"

    invoke-static {p1, v0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->setType(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public bindContentImageIn(Landroid/view/View;)V
    .locals 4

    const-string v0, "TwTransitIDContentImage"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "TwTransitActionScale"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "TwTransitActionTranslate"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->bindIn(Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;)V

    return-void
.end method

.method public bindContentImageOut(Landroid/content/Intent;Landroid/view/View;)V
    .locals 4

    const-string v0, "TwTransitIDContentImage"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "TwTransitActionNone"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->bindOut(Landroid/content/Intent;Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;)V

    const-string v0, "TwTransitTypeGlide"

    invoke-static {p1, v0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->setType(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public bindContentTextIn(Landroid/view/View;)V
    .locals 4

    const-string v0, "TwTransitIDContentText"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "TwTransitActionAlpha"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "TwTransitActionScale"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "TwTransitActionTranslate"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->bindIn(Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;)V

    return-void
.end method

.method public bindContentTextOut(Landroid/content/Intent;Landroid/view/View;)V
    .locals 4

    const-string v0, "TwTransitIDContentText"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "TwTransitActionNone"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->bindOut(Landroid/content/Intent;Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;)V

    const-string v0, "TwTransitTypeGlide"

    invoke-static {p1, v0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->setType(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method protected bindImplicitIn()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "TwTransitIdActionBarLogo"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "TwTransitActionScale"

    aput-object v2, v1, v3

    const-string v2, "TwTransitActionTranslate"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v6, v1}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->bindIn(Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;)V

    const-string v0, "TwTransitIdActionBarTitle"

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "TwTransitActionAlpha"

    aput-object v2, v1, v3

    const-string v2, "TwTransitActionScale"

    aput-object v2, v1, v4

    const-string v2, "TwTransitActionTranslate"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v6, v1}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->bindIn(Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;)V

    const-string v0, "TwTransitIdActionBarSubTitle"

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "TwTransitActionAlpha"

    aput-object v2, v1, v3

    const-string v2, "TwTransitActionScale"

    aput-object v2, v1, v4

    const-string v2, "TwTransitActionTranslate"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v6, v1}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->bindIn(Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;)V

    return-void
.end method

.method protected bindImplicitOut()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getReverseAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/sec/android/touchwiz/utils/TwTransit;->bindImplicitOut()V

    goto :goto_0
.end method

.method protected createMainViewAnimatorIn(Landroid/app/Activity;Landroid/view/View;Ljava/util/ArrayList;)Landroid/animation/AnimatorSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    const/4 v6, 0x0

    const-wide/16 v4, 0x2ee

    const/4 v3, 0x2

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getReverseAnimationEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->isTransitCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    const/high16 v2, 0x3f80

    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    const-string v2, "alpha"

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {p2, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v2, Lcom/sec/android/touchwiz/utils/TwGlideTransit$1;

    invoke-direct {v2, p0, p2}, Lcom/sec/android/touchwiz/utils/TwGlideTransit$1;-><init>(Lcom/sec/android/touchwiz/utils/TwGlideTransit;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v1

    :cond_0
    invoke-virtual {p2, v6}, Landroid/view/View;->setAlpha(F)V

    const-string v2, "alpha"

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {p2, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v6}, Landroid/view/View;->setAlpha(F)V

    const-string v2, "alpha"

    new-array v3, v3, [F

    fill-array-data v3, :array_2

    invoke-static {p2, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected createMainViewAnimatorOut(Landroid/app/Activity;Landroid/view/View;Ljava/util/ArrayList;)Landroid/animation/AnimatorSet;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v8, 0x0

    const-wide/16 v0, 0x96

    const-wide/16 v6, 0x0

    instance-of v9, p2, Landroid/widget/TextView;

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getReverseAnimationEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/View;->setAlpha(F)V

    const-string v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    invoke-static {p2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v10, 0x2ee

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->isTransitCanceled()Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v9, 0x4040

    invoke-direct {v8, v9}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    const/4 v9, 0x1

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_0
    :goto_0
    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v5

    :cond_1
    const-string v9, "scaleX"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_1

    invoke-static {p2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v10, 0x2ee

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-string v9, "scaleY"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_2

    invoke-static {p2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v10, 0x2ee

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v9, 0x3

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v9, 0x2

    mul-long v6, v0, v9

    new-instance v8, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v8}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    goto :goto_0

    :cond_2
    instance-of v9, p2, Landroid/widget/ImageView;

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getReverseAnimationEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/View;->setAlpha(F)V

    const-string v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_3

    invoke-static {p2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v10, 0x2ee

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->isTransitCanceled()Z

    move-result v9

    if-nez v9, :cond_3

    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v9, 0x4040

    invoke-direct {v8, v9}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    const/4 v9, 0x1

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_3
    const-string v9, "scaleX"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_4

    invoke-static {p2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v10, 0x2ee

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-string v9, "scaleY"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_5

    invoke-static {p2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v10, 0x2ee

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v9, 0x3

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v9, 0x2

    mul-long v6, v0, v9

    new-instance v8, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v8}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    goto/16 :goto_0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0xcdt 0xcct 0x8ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_2
    .array-data 0x4
        0xcdt 0xcct 0x8ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_4
    .array-data 0x4
        0xcdt 0xcct 0x8ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_5
    .array-data 0x4
        0xcdt 0xcct 0x8ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method protected createMainWindowAnimatorIn(Landroid/app/Activity;)Landroid/animation/AnimatorSet;
    .locals 8

    const-wide/16 v6, 0x12c

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getReverseAnimationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v2, v3, [Landroid/animation/Animator;

    const-string v3, "alpha"

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    return-object v0

    :cond_0
    new-array v2, v3, [Landroid/animation/Animator;

    const-string v3, "alpha"

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method protected createMainWindowAnimatorOut(Landroid/app/Activity;)Landroid/animation/AnimatorSet;
    .locals 10

    const/high16 v6, 0x4000

    const-wide/16 v8, 0x12c

    const/4 v7, 0x2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v1, v5}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v1, v5}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getReverseAnimationEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->isTransitCanceled()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "alpha"

    new-array v6, v7, [F

    fill-array-data v6, :array_0

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v5, "scaleX"

    new-array v6, v7, [F

    fill-array-data v6, :array_1

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-string v5, "scaleY"

    new-array v6, v7, [F

    fill-array-data v6, :array_2

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    aput-object v4, v5, v7

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x33t 0x33t 0x73t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_2
    .array-data 0x4
        0x33t 0x33t 0x73t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method protected createOverlayViewAnimatorIn(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/util/ArrayList;)Landroid/animation/AnimatorSet;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getReverseAnimationEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v15

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getParcelables()Ljava/util/HashMap;

    move-result-object v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p3

    instance-of v2, v0, Landroid/widget/TextView;

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    move/from16 v17, v0

    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v20

    iget v2, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingLeft:I

    move-object/from16 v0, v20

    iget v3, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingTop:I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingRight:I

    move-object/from16 v0, v20

    iget v6, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingBottom:I

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, v20

    iget v2, v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mSize:F

    div-float v2, v2, v17

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextSize(F)V

    move-object/from16 v2, p3

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mText:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v20

    iget v2, v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mGravity:I

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v2, p3

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mFontStyle:I

    invoke-virtual {v4, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    move-object/from16 v0, v20

    iget v2, v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mTextScaleX:F

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextScaleX(F)V

    new-instance v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v2, p3

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    div-float v2, v2, v17

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    move-object/from16 v2, p3

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v2, p3

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v2, p3

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getGravity()I

    move-result v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v2, p3

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v2, p3

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextScaleX()F

    move-result v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextScaleX(F)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getBoundsInfo(Landroid/view/View;)Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;

    move-result-object v25

    const/16 v21, 0x0

    :goto_1
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_c

    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getReverseAnimationEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    :cond_3
    const-string v2, "TwTransitActionAlpha"

    if-ne v11, v2, :cond_4

    const-string v3, "TwTransitActionAlpha"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v12

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    const/4 v3, 0x1

    const-string v6, "TwTransitActionAlpha"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v7, v24

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v15, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    :cond_4
    const-string v2, "TwTransitActionScale"

    if-ne v11, v2, :cond_5

    const-string v3, "TwTransitActionScale"

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, v20

    move-object/from16 v6, v25

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v13

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v13, v2, v3

    invoke-virtual {v15, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v13, v2, v3

    const/4 v3, 0x1

    const-string v6, "TwTransitActionScale"

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v7, v24

    move-object/from16 v8, v20

    move-object/from16 v9, v25

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v15, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    :cond_5
    const-string v2, "TwTransitActionTranslate"

    if-ne v11, v2, :cond_2

    const-string v3, "TwTransitActionTranslate"

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, v20

    move-object/from16 v6, v25

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v14

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    invoke-virtual {v15, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    const/4 v3, 0x1

    const-string v6, "TwTransitActionTranslate"

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, v24

    move-object/from16 v8, v20

    move-object/from16 v9, v25

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v15, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p3

    instance-of v2, v0, Landroid/widget/ImageView;

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    new-instance v7, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v2, p3

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    check-cast v18, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v16

    if-eqz v16, :cond_7

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v2, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_7
    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getBoundsInfo(Landroid/view/View;)Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;

    move-result-object v25

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v21, 0x0

    :goto_3
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_c

    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getReverseAnimationEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    :goto_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    :cond_9
    const-string v2, "TwTransitActionAlpha"

    if-ne v11, v2, :cond_a

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    const-string v6, "TwTransitActionAlpha"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v15, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_4

    :cond_a
    const-string v2, "TwTransitActionScale"

    if-ne v11, v2, :cond_b

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    const-string v6, "TwTransitActionScale"

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v8, v19

    move-object/from16 v9, v25

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v15, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_4

    :cond_b
    const-string v2, "TwTransitActionTranslate"

    if-ne v11, v2, :cond_8

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    const-string v6, "TwTransitActionTranslate"

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object/from16 v8, v19

    move-object/from16 v9, v25

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v15, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_4

    :cond_c
    new-instance v2, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v2}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v15, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_0
.end method

.method protected createOverlayViewAnimatorOut(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/util/ArrayList;)Landroid/animation/AnimatorSet;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getParcelables()Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/utils/TwTransit;->mBoundsInfo:Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/utils/TwTransit;->mTextInfo:Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/utils/TwTransit;->mBoundsInfoActionList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/utils/TwTransit;->mTextInfoActionList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v12

    :cond_1
    move-object/from16 v0, p3

    instance-of v2, v0, Landroid/widget/TextView;

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwTransit;->mTextInfo:Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v14, v2, Landroid/util/DisplayMetrics;->density:F

    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingLeft:I

    move-object/from16 v0, v17

    iget v3, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingTop:I

    move-object/from16 v0, v17

    iget v5, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingRight:I

    move-object/from16 v0, v17

    iget v6, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingBottom:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mSize:F

    div-float/2addr v2, v14

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    move-object/from16 v2, p3

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mText:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mGravity:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v2, p3

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, v17

    iget v3, v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mFontStyle:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mTextScaleX:F

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextScaleX(F)V

    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v2, p3

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    div-float/2addr v2, v14

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextSize(F)V

    move-object/from16 v2, p3

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v2, p3

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v2, p3

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getGravity()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v2, p3

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v2, p3

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextScaleX()F

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextScaleX(F)V

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getBoundsInfo(Landroid/view/View;)Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;

    move-result-object v22

    const/16 v19, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/utils/TwTransit;->mTextInfoActionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/utils/TwTransit;->mTextInfoActionList:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getReverseAnimationEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->isTransitCanceled()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "TwTransitActionAlpha"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    new-array v0, v2, [Landroid/animation/Animator;

    move-object/from16 v23, v0

    const/4 v8, 0x0

    const-string v3, "TwTransitActionAlpha"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v23, v8

    const/4 v2, 0x1

    const-string v6, "TwTransitActionAlpha"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v7, v18

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v3

    aput-object v3, v23, v2

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_2
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    :cond_3
    const-string v2, "TwTransitActionScale"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    new-array v0, v2, [Landroid/animation/Animator;

    move-object/from16 v23, v0

    const/4 v2, 0x0

    const-string v6, "TwTransitActionScale"

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, v18

    move-object/from16 v8, v17

    move-object/from16 v9, v22

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v3

    aput-object v3, v23, v2

    const/4 v8, 0x1

    const-string v3, "TwTransitActionScale"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, v22

    move-object/from16 v6, v17

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v23, v8

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    :cond_4
    const-string v2, "TwTransitActionTranslate"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    new-array v0, v2, [Landroid/animation/Animator;

    move-object/from16 v23, v0

    const/4 v2, 0x0

    const-string v6, "TwTransitActionTranslate"

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v7, v18

    move-object/from16 v8, v22

    move-object/from16 v9, v17

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v3

    aput-object v3, v23, v2

    const/4 v8, 0x1

    const-string v3, "TwTransitActionTranslate"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, v22

    move-object/from16 v6, v17

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v23, v8

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_2

    :cond_6
    move-object/from16 v0, p3

    instance-of v2, v0, Landroid/widget/ImageView;

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    new-instance v7, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v2, p3

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    check-cast v15, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    if-eqz v13, :cond_7

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v5, 0x0

    invoke-static {v13, v2, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwTransit;->mBoundsInfo:Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getBoundsInfo(Landroid/view/View;)Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;

    move-result-object v22

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v19, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/utils/TwTransit;->mBoundsInfoActionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/utils/TwTransit;->mBoundsInfoActionList:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getReverseAnimationEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->isTransitCanceled()Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "TwTransitActionAlpha"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    const-string v6, "TwTransitActionAlpha"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v12, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_8
    :goto_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    :cond_9
    const-string v2, "TwTransitActionScale"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    const-string v6, "TwTransitActionScale"

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v8, v22

    move-object/from16 v9, v16

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v12, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_4

    :cond_a
    const-string v2, "TwTransitActionTranslate"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    const-string v6, "TwTransitActionTranslate"

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v8, v22

    move-object/from16 v9, v16

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v12, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_4

    :cond_c
    new-instance v2, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v2}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v12, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_0
.end method

.method protected createOverlayWindowAnimatorIn(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/animation/AnimatorSet;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/utils/TwTransit;->createOverlayWindowAnimatorIn(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method protected createOverlayWindowAnimatorOut(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/animation/AnimatorSet;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/utils/TwTransit;->createOverlayWindowAnimatorOut(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method protected needToCreateOverlayWindowIn()Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getReverseAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method protected needToCreateOverlayWindowOut()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getReverseAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateStransitProgressValue(Landroid/animation/Animator;Ljava/lang/String;)F
    .locals 2

    const/4 v0, 0x0

    const-string v1, "alpha"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "scaleX"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "scaleY"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "translationX"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "translationY"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method
