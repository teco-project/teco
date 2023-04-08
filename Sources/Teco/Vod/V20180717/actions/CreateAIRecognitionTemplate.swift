//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import TecoCore

extension Vod {
    /// CreateAIRecognitionTemplate请求参数结构体
    public struct CreateAIRecognitionTemplateRequest: TCRequestModel {
        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        /// 音视频内容识别模板名称，长度限制：64 个字符。
        public let name: String?

        /// 音视频内容识别模板描述信息，长度限制：256 个字符。
        public let comment: String?

        /// 视频片头片尾识别控制参数。
        public let headTailConfigure: HeadTailConfigureInfo?

        /// 视频拆条识别控制参数。
        public let segmentConfigure: SegmentConfigureInfo?

        /// 人脸识别控制参数。
        public let faceConfigure: FaceConfigureInfo?

        /// 文本全文识别控制参数。
        public let ocrFullTextConfigure: OcrFullTextConfigureInfo?

        /// 文本关键词识别控制参数。
        public let ocrWordsConfigure: OcrWordsConfigureInfo?

        /// 语音全文识别控制参数。
        public let asrFullTextConfigure: AsrFullTextConfigureInfo?

        /// 语音关键词识别控制参数。
        public let asrWordsConfigure: AsrWordsConfigureInfo?

        /// 物体识别控制参数。
        public let objectConfigure: ObjectConfigureInfo?

        /// 截帧间隔，单位为秒。当不填时，默认截帧间隔为 1 秒，最小值为 0.5 秒。
        public let screenshotInterval: Float?

        public init(subAppId: UInt64? = nil, name: String? = nil, comment: String? = nil, headTailConfigure: HeadTailConfigureInfo? = nil, segmentConfigure: SegmentConfigureInfo? = nil, faceConfigure: FaceConfigureInfo? = nil, ocrFullTextConfigure: OcrFullTextConfigureInfo? = nil, ocrWordsConfigure: OcrWordsConfigureInfo? = nil, asrFullTextConfigure: AsrFullTextConfigureInfo? = nil, asrWordsConfigure: AsrWordsConfigureInfo? = nil, objectConfigure: ObjectConfigureInfo? = nil, screenshotInterval: Float? = nil) {
            self.subAppId = subAppId
            self.name = name
            self.comment = comment
            self.headTailConfigure = headTailConfigure
            self.segmentConfigure = segmentConfigure
            self.faceConfigure = faceConfigure
            self.ocrFullTextConfigure = ocrFullTextConfigure
            self.ocrWordsConfigure = ocrWordsConfigure
            self.asrFullTextConfigure = asrFullTextConfigure
            self.asrWordsConfigure = asrWordsConfigure
            self.objectConfigure = objectConfigure
            self.screenshotInterval = screenshotInterval
        }

        enum CodingKeys: String, CodingKey {
            case subAppId = "SubAppId"
            case name = "Name"
            case comment = "Comment"
            case headTailConfigure = "HeadTailConfigure"
            case segmentConfigure = "SegmentConfigure"
            case faceConfigure = "FaceConfigure"
            case ocrFullTextConfigure = "OcrFullTextConfigure"
            case ocrWordsConfigure = "OcrWordsConfigure"
            case asrFullTextConfigure = "AsrFullTextConfigure"
            case asrWordsConfigure = "AsrWordsConfigure"
            case objectConfigure = "ObjectConfigure"
            case screenshotInterval = "ScreenshotInterval"
        }
    }

    /// CreateAIRecognitionTemplate返回参数结构体
    public struct CreateAIRecognitionTemplateResponse: TCResponseModel {
        /// 音视频内容识别模板唯一标识。
        public let definition: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
            case requestId = "RequestId"
        }
    }

    /// 创建音视频内容识别模板
    ///
    /// 创建用户自定义音视频内容识别模板，数量上限：50。
    @inlinable
    public func createAIRecognitionTemplate(_ input: CreateAIRecognitionTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAIRecognitionTemplateResponse> {
        self.client.execute(action: "CreateAIRecognitionTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建音视频内容识别模板
    ///
    /// 创建用户自定义音视频内容识别模板，数量上限：50。
    @inlinable
    public func createAIRecognitionTemplate(_ input: CreateAIRecognitionTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAIRecognitionTemplateResponse {
        try await self.client.execute(action: "CreateAIRecognitionTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建音视频内容识别模板
    ///
    /// 创建用户自定义音视频内容识别模板，数量上限：50。
    @inlinable
    public func createAIRecognitionTemplate(subAppId: UInt64? = nil, name: String? = nil, comment: String? = nil, headTailConfigure: HeadTailConfigureInfo? = nil, segmentConfigure: SegmentConfigureInfo? = nil, faceConfigure: FaceConfigureInfo? = nil, ocrFullTextConfigure: OcrFullTextConfigureInfo? = nil, ocrWordsConfigure: OcrWordsConfigureInfo? = nil, asrFullTextConfigure: AsrFullTextConfigureInfo? = nil, asrWordsConfigure: AsrWordsConfigureInfo? = nil, objectConfigure: ObjectConfigureInfo? = nil, screenshotInterval: Float? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAIRecognitionTemplateResponse> {
        self.createAIRecognitionTemplate(.init(subAppId: subAppId, name: name, comment: comment, headTailConfigure: headTailConfigure, segmentConfigure: segmentConfigure, faceConfigure: faceConfigure, ocrFullTextConfigure: ocrFullTextConfigure, ocrWordsConfigure: ocrWordsConfigure, asrFullTextConfigure: asrFullTextConfigure, asrWordsConfigure: asrWordsConfigure, objectConfigure: objectConfigure, screenshotInterval: screenshotInterval), region: region, logger: logger, on: eventLoop)
    }

    /// 创建音视频内容识别模板
    ///
    /// 创建用户自定义音视频内容识别模板，数量上限：50。
    @inlinable
    public func createAIRecognitionTemplate(subAppId: UInt64? = nil, name: String? = nil, comment: String? = nil, headTailConfigure: HeadTailConfigureInfo? = nil, segmentConfigure: SegmentConfigureInfo? = nil, faceConfigure: FaceConfigureInfo? = nil, ocrFullTextConfigure: OcrFullTextConfigureInfo? = nil, ocrWordsConfigure: OcrWordsConfigureInfo? = nil, asrFullTextConfigure: AsrFullTextConfigureInfo? = nil, asrWordsConfigure: AsrWordsConfigureInfo? = nil, objectConfigure: ObjectConfigureInfo? = nil, screenshotInterval: Float? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAIRecognitionTemplateResponse {
        try await self.createAIRecognitionTemplate(.init(subAppId: subAppId, name: name, comment: comment, headTailConfigure: headTailConfigure, segmentConfigure: segmentConfigure, faceConfigure: faceConfigure, ocrFullTextConfigure: ocrFullTextConfigure, ocrWordsConfigure: ocrWordsConfigure, asrFullTextConfigure: asrFullTextConfigure, asrWordsConfigure: asrWordsConfigure, objectConfigure: objectConfigure, screenshotInterval: screenshotInterval), region: region, logger: logger, on: eventLoop)
    }
}
