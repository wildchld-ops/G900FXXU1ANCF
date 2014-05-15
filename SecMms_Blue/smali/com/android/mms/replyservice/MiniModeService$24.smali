.class synthetic Lcom/android/mms/replyservice/MiniModeService$24;
.super Ljava/lang/Object;
.source "MiniModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/replyservice/MiniModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$mms$replyservice$MiniModeService$Resizable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/mms/replyservice/MiniModeService$Resizable;->values()[Lcom/android/mms/replyservice/MiniModeService$Resizable;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/mms/replyservice/MiniModeService$24;->$SwitchMap$com$android$mms$replyservice$MiniModeService$Resizable:[I

    :try_start_0
    sget-object v0, Lcom/android/mms/replyservice/MiniModeService$24;->$SwitchMap$com$android$mms$replyservice$MiniModeService$Resizable:[I

    sget-object v1, Lcom/android/mms/replyservice/MiniModeService$Resizable;->BOTTOM_ONLY:Lcom/android/mms/replyservice/MiniModeService$Resizable;

    invoke-virtual {v1}, Lcom/android/mms/replyservice/MiniModeService$Resizable;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/mms/replyservice/MiniModeService$24;->$SwitchMap$com$android$mms$replyservice$MiniModeService$Resizable:[I

    sget-object v1, Lcom/android/mms/replyservice/MiniModeService$Resizable;->RIGHT_ONLY:Lcom/android/mms/replyservice/MiniModeService$Resizable;

    invoke-virtual {v1}, Lcom/android/mms/replyservice/MiniModeService$Resizable;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/mms/replyservice/MiniModeService$24;->$SwitchMap$com$android$mms$replyservice$MiniModeService$Resizable:[I

    sget-object v1, Lcom/android/mms/replyservice/MiniModeService$Resizable;->RIGHT_BOTTOM:Lcom/android/mms/replyservice/MiniModeService$Resizable;

    invoke-virtual {v1}, Lcom/android/mms/replyservice/MiniModeService$Resizable;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
