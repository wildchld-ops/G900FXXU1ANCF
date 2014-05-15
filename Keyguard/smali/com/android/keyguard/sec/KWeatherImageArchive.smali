.class Lcom/android/keyguard/sec/KWeatherImageArchive;
.super Lcom/android/keyguard/sec/AbstractWeatherImageArchive;
.source "KWeatherImageArchive.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/AbstractWeatherImageArchive;-><init>()V

    return-void
.end method

.method private checkDayOrNight()Z
    .locals 10

    const/16 v9, 0x12

    const/4 v8, 0x6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v3, v6, 0x1

    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v6, "ko_KR"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x3

    if-lt v3, v6, :cond_2

    const/16 v6, 0xa

    if-ge v3, v6, :cond_2

    if-lt v1, v8, :cond_0

    const/16 v6, 0x13

    if-lt v1, v6, :cond_1

    :cond_0
    move v4, v5

    :cond_1
    :goto_0
    return v4

    :cond_2
    const/4 v6, 0x7

    if-lt v1, v6, :cond_3

    if-lt v1, v9, :cond_1

    :cond_3
    move v4, v5

    goto :goto_0

    :cond_4
    if-lt v1, v8, :cond_5

    if-lt v1, v9, :cond_1

    :cond_5
    move v4, v5

    goto :goto_0

    :cond_6
    if-lt v1, v8, :cond_7

    if-lt v1, v9, :cond_1

    :cond_7
    move v4, v5

    goto :goto_0
.end method


# virtual methods
.method public getImage(I)I
    .locals 2

    packed-switch p1, :pswitch_data_0

    const v0, 0x7f02029a

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KWeatherImageArchive;->checkDayOrNight()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f02029a

    goto :goto_0

    :cond_0
    const v0, 0x7f0202ab

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/KWeatherImageArchive;->checkDayOrNight()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f02029b

    goto :goto_0

    :cond_1
    const v0, 0x7f0202ac

    goto :goto_0

    :pswitch_2
    const v0, 0x7f02029c

    goto :goto_0

    :pswitch_3
    const v0, 0x7f02029d

    goto :goto_0

    :pswitch_4
    const v0, 0x7f02029e

    goto :goto_0

    :pswitch_5
    const v0, 0x7f02029f

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0202a0

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0202a2

    goto :goto_0

    :pswitch_8
    const v0, 0x7f0202a4

    goto :goto_0

    :pswitch_9
    const v0, 0x7f0202a5

    goto :goto_0

    :pswitch_a
    const v0, 0x7f0202a6

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method
