//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import struct Foundation.Date

extension Vod {
    /// 修改音视频内容识别模板
    ///
    /// 修改用户自定义音视频内容识别模板。
    @inlinable
    public func modifyAIRecognitionTemplate(_ input: ModifyAIRecognitionTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyAIRecognitionTemplateResponse > {
        self.client.execute(action: "ModifyAIRecognitionTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改音视频内容识别模板
    ///
    /// 修改用户自定义音视频内容识别模板。
    @inlinable
    public func modifyAIRecognitionTemplate(_ input: ModifyAIRecognitionTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAIRecognitionTemplateResponse {
        try await self.client.execute(action: "ModifyAIRecognitionTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyAIRecognitionTemplate请求参数结构体
    public struct ModifyAIRecognitionTemplateRequest: TCRequestModel {
        /// 音视频内容识别模板唯一标识。
        public let definition: Int64
        
        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?
        
        /// 音视频内容识别模板名称，长度限制：64 个字符。
        public let name: String?
        
        /// 音视频内容识别模板描述信息，长度限制：256 个字符。
        public let comment: String?
        
        /// 视频片头片尾识别控制参数。
        public let headTailConfigure: HeadTailConfigureInfoForUpdate
        
        /// 视频拆条识别控制参数。
        public let segmentConfigure: SegmentConfigureInfoForUpdate
        
        /// 人脸识别控制参数。
        public let faceConfigure: FaceConfigureInfoForUpdate
        
        /// 文本全文识别控制参数。
        public let ocrFullTextConfigure: OcrFullTextConfigureInfoForUpdate
        
        /// 文本关键词识别控制参数。
        public let ocrWordsConfigure: OcrWordsConfigureInfoForUpdate
        
        /// 语音全文识别控制参数。
        public let asrFullTextConfigure: AsrFullTextConfigureInfoForUpdate
        
        /// 语音关键词识别控制参数。
        public let asrWordsConfigure: AsrWordsConfigureInfoForUpdate
        
        /// 物体识别控制参数。
        public let objectConfigure: ObjectConfigureInfoForUpdate
        
        /// 截帧间隔，单位为秒，最小值为 0.5 秒。
        public let screenshotInterval: Float?
        
        public init (definition: Int64, subAppId: UInt64?, name: String?, comment: String?, headTailConfigure: HeadTailConfigureInfoForUpdate, segmentConfigure: SegmentConfigureInfoForUpdate, faceConfigure: FaceConfigureInfoForUpdate, ocrFullTextConfigure: OcrFullTextConfigureInfoForUpdate, ocrWordsConfigure: OcrWordsConfigureInfoForUpdate, asrFullTextConfigure: AsrFullTextConfigureInfoForUpdate, asrWordsConfigure: AsrWordsConfigureInfoForUpdate, objectConfigure: ObjectConfigureInfoForUpdate, screenshotInterval: Float?) {
            self.definition = definition
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
            case definition = "Definition"
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
    
    /// ModifyAIRecognitionTemplate返回参数结构体
    public struct ModifyAIRecognitionTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
