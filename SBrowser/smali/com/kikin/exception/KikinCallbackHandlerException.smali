.class public Lcom/kikin/exception/KikinCallbackHandlerException;
.super Ljava/lang/Exception;
.source "KikinCallbackHandlerException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kikin/exception/KikinCallbackHandlerException$1;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2f18a7df4b43ed32L


# direct methods
.method public constructor <init>(Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    sget-object v1, Lcom/kikin/exception/KikinCallbackHandlerException$1;->$SwitchMap$com$kikin$exception$KikinCallbackHandlerExceptionEnum:[I

    invoke-virtual {p1}, Lcom/kikin/exception/KikinCallbackHandlerExceptionEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const-string v0, "Unknow exception"

    :goto_0
    new-instance v1, Lcom/kikin/exception/KikinCallbackHandlerException;

    invoke-direct {v1, v0}, Lcom/kikin/exception/KikinCallbackHandlerException;-><init>(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string v0, "Callback handler passed is invalid."

    goto :goto_0

    :pswitch_1
    const-string v0, "View returned by callback handler is invalid."

    goto :goto_0

    :pswitch_2
    const-string v0, "Theme returned by callback handler is invalid."

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
