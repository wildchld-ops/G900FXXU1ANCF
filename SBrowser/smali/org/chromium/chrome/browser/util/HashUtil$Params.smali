.class public Lorg/chromium/chrome/browser/util/HashUtil$Params;
.super Ljava/lang/Object;
.source "HashUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/chrome/browser/util/HashUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# instance fields
.field private mSalt:Ljava/lang/String;

.field private final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/chrome/browser/util/HashUtil$Params;->mText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/util/HashUtil$Params;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/util/HashUtil$Params;->mText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/util/HashUtil$Params;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/util/HashUtil$Params;->mSalt:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public withSalt(Ljava/lang/String;)Lorg/chromium/chrome/browser/util/HashUtil$Params;
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/util/HashUtil$Params;->mSalt:Ljava/lang/String;

    return-object p0
.end method
