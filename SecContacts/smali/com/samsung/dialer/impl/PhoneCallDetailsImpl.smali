.class public Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;
.super Ljava/lang/Object;
.source "PhoneCallDetailsImpl.java"


# instance fields
.field public final callTypes:[I

.field public contactId:J

.field public final contactUri:Landroid/net/Uri;

.field public final countryIso:Ljava/lang/String;

.field public final date:J

.field public final duration:J

.field public extra:Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;

.field public final formattedNumber:Ljava/lang/CharSequence;

.field public final geocode:Ljava/lang/String;

.field public final id:I

.field public final logType:I

.field public final messageContent:Ljava/lang/String;

.field public msgId:Ljava/lang/String;

.field public final name:Ljava/lang/CharSequence;

.field public final number:Ljava/lang/CharSequence;

.field public final numberLabel:Ljava/lang/CharSequence;

.field public final numberType:I

.field public final photoUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;JLcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;Ljava/lang/String;)V
    .locals 4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->contactId:J

    iput p1, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->id:I

    iput-object p2, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->number:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->formattedNumber:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->countryIso:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->geocode:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->callTypes:[I

    iput-wide p7, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->date:J

    iput-wide p9, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->duration:J

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->name:Ljava/lang/CharSequence;

    move/from16 v0, p13

    iput v0, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->numberType:I

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->numberLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->contactUri:Landroid/net/Uri;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->photoUri:Landroid/net/Uri;

    iput p11, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->logType:I

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->messageContent:Ljava/lang/String;

    move-wide/from16 v0, p18

    iput-wide v0, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->contactId:J

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->extra:Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->msgId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;JLcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;Ljava/lang/String;)V
    .locals 22

    const/4 v1, -0x1

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-wide/from16 v18, p16

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    invoke-direct/range {v0 .. v21}, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;JLcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;Ljava/lang/String;)V

    return-void
.end method
