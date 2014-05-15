.class synthetic Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi$3;
.super Ljava/lang/Object;
.source "SynctabXlargeUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$android$app$sbrowser$common$SplitRatioController$SplitRatioListener$Operation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener$Operation;->values()[Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener$Operation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi$3;->$SwitchMap$com$sec$android$app$sbrowser$common$SplitRatioController$SplitRatioListener$Operation:[I

    :try_start_0
    sget-object v0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi$3;->$SwitchMap$com$sec$android$app$sbrowser$common$SplitRatioController$SplitRatioListener$Operation:[I

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener$Operation;->START_CHANGING_SPLIT_RATIO:Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener$Operation;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener$Operation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi$3;->$SwitchMap$com$sec$android$app$sbrowser$common$SplitRatioController$SplitRatioListener$Operation:[I

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener$Operation;->STOP_CHANGING_SPLIT_RATIO:Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener$Operation;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener$Operation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
