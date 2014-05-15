.class public Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;
.super Ljava/lang/Object;
.source "TemplateUrlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TemplateUrl"
.end annotation


# instance fields
.field private final mIndex:I

.field private final mKeyword:Ljava/lang/String;

.field private final mShortName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;->mIndex:I

    iput-object p2, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;->mShortName:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;->mKeyword:Ljava/lang/String;

    return-void
.end method

.method public static create(ILjava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "TemplateUrl"
    .end annotation

    new-instance v0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;->mIndex:I

    return v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;->mKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;->mShortName:Ljava/lang/String;

    return-object v0
.end method
