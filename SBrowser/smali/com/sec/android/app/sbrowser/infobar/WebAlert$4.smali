.class synthetic Lcom/sec/android/app/sbrowser/infobar/WebAlert$4;
.super Ljava/lang/Object;
.source "WebAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/infobar/WebAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$android$app$sbrowser$infobar$WebAlert$AlertInfoType:[I

.field static final synthetic $SwitchMap$com$sec$android$app$sbrowser$infobar$WebAlert$WebAlertType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;->values()[Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$4;->$SwitchMap$com$sec$android$app$sbrowser$infobar$WebAlert$WebAlertType:[I

    :try_start_0
    sget-object v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$4;->$SwitchMap$com$sec$android$app$sbrowser$infobar$WebAlert$WebAlertType:[I

    sget-object v1, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;->WEBALERT_CONFIRM:Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$4;->$SwitchMap$com$sec$android$app$sbrowser$infobar$WebAlert$WebAlertType:[I

    sget-object v1, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;->WEBALERT_MESSAGE:Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$4;->$SwitchMap$com$sec$android$app$sbrowser$infobar$WebAlert$WebAlertType:[I

    sget-object v1, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;->WEBALERT_NOTIFICATION_MESSAGE:Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$4;->$SwitchMap$com$sec$android$app$sbrowser$infobar$WebAlert$WebAlertType:[I

    sget-object v1, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;->WEBALERT_POPUP_BLOCKED:Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;->values()[Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$4;->$SwitchMap$com$sec$android$app$sbrowser$infobar$WebAlert$AlertInfoType:[I

    :try_start_4
    sget-object v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$4;->$SwitchMap$com$sec$android$app$sbrowser$infobar$WebAlert$AlertInfoType:[I

    sget-object v1, Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;->ALERT_INFO:Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$4;->$SwitchMap$com$sec$android$app$sbrowser$infobar$WebAlert$AlertInfoType:[I

    sget-object v1, Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;->ALERT_WARNING:Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
