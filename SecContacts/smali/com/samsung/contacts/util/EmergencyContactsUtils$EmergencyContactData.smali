.class public Lcom/samsung/contacts/util/EmergencyContactsUtils$EmergencyContactData;
.super Ljava/lang/Object;
.source "EmergencyContactsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/util/EmergencyContactsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmergencyContactData"
.end annotation


# instance fields
.field public defaultEmergency:I

.field public id:J

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public phoneDataId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
