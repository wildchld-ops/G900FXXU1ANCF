.class public Lcom/android/mms/CustomR;
.super Ljava/lang/Object;
.source "CustomR.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/CustomR"

.field public static final dummy_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResourceId(I)I
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Mms/CustomR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResourceId id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0007
        :pswitch_0
    .end packed-switch
.end method
