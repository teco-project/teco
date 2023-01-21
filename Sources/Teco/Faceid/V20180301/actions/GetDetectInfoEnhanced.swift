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

extension Faceid {
    /// GetDetectInfoEnhanced请求参数结构体
    public struct GetDetectInfoEnhancedRequest: TCRequestModel {
        /// 人脸核身流程的标识，调用DetectAuth接口时生成。
        public let bizToken: String

        /// 用于细分客户使用场景，由腾讯侧在线下对接时分配。
        public let ruleId: String

        /// 指定拉取的结果信息，取值（0：全部；1：文本类；2：身份证信息；3：视频最佳截图信息）。
        /// 如 13表示拉取文本类、视频最佳截图信息。
        /// 默认值：0
        public let infoType: String?

        /// 从活体视频中截取一定张数的最佳帧（仅部分服务支持，若需使用请与慧眼小助手沟通）。默认为0，最大为10，超出10的最多只给10张。（InfoType需要包含3）
        public let bestFramesCount: UInt64?

        /// 是否对身份证照片进行裁边。默认为false。（InfoType需要包含2）
        public let isCutIdCardImage: Bool?

        /// 是否需要从身份证中抠出头像。默认为false。（InfoType需要包含2）
        public let isNeedIdCardAvatar: Bool?

        /// 已弃用。
        public let isEncrypt: Bool?

        /// 是否需要对返回中的敏感信息进行加密。仅指定加密算法Algorithm即可，其余字段传入默认值。其中敏感信息包括：Response.Text.IdCard、Response.Text.Name、Response.Text.OcrIdCard、Response.Text.OcrName
        public let encryption: Encryption?

        public init(bizToken: String, ruleId: String, infoType: String? = nil, bestFramesCount: UInt64? = nil, isCutIdCardImage: Bool? = nil, isNeedIdCardAvatar: Bool? = nil, isEncrypt: Bool? = nil, encryption: Encryption? = nil) {
            self.bizToken = bizToken
            self.ruleId = ruleId
            self.infoType = infoType
            self.bestFramesCount = bestFramesCount
            self.isCutIdCardImage = isCutIdCardImage
            self.isNeedIdCardAvatar = isNeedIdCardAvatar
            self.isEncrypt = isEncrypt
            self.encryption = encryption
        }

        enum CodingKeys: String, CodingKey {
            case bizToken = "BizToken"
            case ruleId = "RuleId"
            case infoType = "InfoType"
            case bestFramesCount = "BestFramesCount"
            case isCutIdCardImage = "IsCutIdCardImage"
            case isNeedIdCardAvatar = "IsNeedIdCardAvatar"
            case isEncrypt = "IsEncrypt"
            case encryption = "Encryption"
        }
    }

    /// GetDetectInfoEnhanced返回参数结构体
    public struct GetDetectInfoEnhancedResponse: TCResponseModel {
        /// 文本类信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let text: DetectInfoText?

        /// 身份证照片信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let idCardData: DetectInfoIdCardData?

        /// 最佳帧信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bestFrame: DetectInfoBestFrame?

        /// 视频信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let videoData: DetectInfoVideoData?

        /// 敏感数据加密信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let encryption: Encryption?

        /// 意愿核身相关信息。若未使用意愿核身功能，该字段返回值可以不处理。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let intentionVerifyData: IntentionVerifyData?

        /// 意愿核身问答模式结果。若未使用该意愿核身功能，该字段返回值可以不处理。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let intentionQuestionResult: IntentionQuestionResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case text = "Text"
            case idCardData = "IdCardData"
            case bestFrame = "BestFrame"
            case videoData = "VideoData"
            case encryption = "Encryption"
            case intentionVerifyData = "IntentionVerifyData"
            case intentionQuestionResult = "IntentionQuestionResult"
            case requestId = "RequestId"
        }
    }

    /// 获取实名核身结果信息增强版
    ///
    /// 完成验证后，用BizToken调用本接口获取结果信息，BizToken生成后三天内（3\*24\*3,600秒）可多次拉取。
    @inlinable
    public func getDetectInfoEnhanced(_ input: GetDetectInfoEnhancedRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDetectInfoEnhancedResponse> {
        self.client.execute(action: "GetDetectInfoEnhanced", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取实名核身结果信息增强版
    ///
    /// 完成验证后，用BizToken调用本接口获取结果信息，BizToken生成后三天内（3\*24\*3,600秒）可多次拉取。
    @inlinable
    public func getDetectInfoEnhanced(_ input: GetDetectInfoEnhancedRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDetectInfoEnhancedResponse {
        try await self.client.execute(action: "GetDetectInfoEnhanced", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取实名核身结果信息增强版
    ///
    /// 完成验证后，用BizToken调用本接口获取结果信息，BizToken生成后三天内（3\*24\*3,600秒）可多次拉取。
    @inlinable
    public func getDetectInfoEnhanced(bizToken: String, ruleId: String, infoType: String? = nil, bestFramesCount: UInt64? = nil, isCutIdCardImage: Bool? = nil, isNeedIdCardAvatar: Bool? = nil, isEncrypt: Bool? = nil, encryption: Encryption? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDetectInfoEnhancedResponse> {
        self.getDetectInfoEnhanced(GetDetectInfoEnhancedRequest(bizToken: bizToken, ruleId: ruleId, infoType: infoType, bestFramesCount: bestFramesCount, isCutIdCardImage: isCutIdCardImage, isNeedIdCardAvatar: isNeedIdCardAvatar, isEncrypt: isEncrypt, encryption: encryption), region: region, logger: logger, on: eventLoop)
    }

    /// 获取实名核身结果信息增强版
    ///
    /// 完成验证后，用BizToken调用本接口获取结果信息，BizToken生成后三天内（3\*24\*3,600秒）可多次拉取。
    @inlinable
    public func getDetectInfoEnhanced(bizToken: String, ruleId: String, infoType: String? = nil, bestFramesCount: UInt64? = nil, isCutIdCardImage: Bool? = nil, isNeedIdCardAvatar: Bool? = nil, isEncrypt: Bool? = nil, encryption: Encryption? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDetectInfoEnhancedResponse {
        try await self.getDetectInfoEnhanced(GetDetectInfoEnhancedRequest(bizToken: bizToken, ruleId: ruleId, infoType: infoType, bestFramesCount: bestFramesCount, isCutIdCardImage: isCutIdCardImage, isNeedIdCardAvatar: isNeedIdCardAvatar, isEncrypt: isEncrypt, encryption: encryption), region: region, logger: logger, on: eventLoop)
    }
}
