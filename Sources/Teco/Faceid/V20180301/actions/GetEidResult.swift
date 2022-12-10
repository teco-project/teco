//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Faceid {
    /// 获取E证通结果信息
    ///
    /// 完成验证后，用EidToken调用本接口获取结果信息，EidToken生成后三天内（3\*24\*3,600秒）可多次拉取。
    @inlinable
    public func getEidResult(_ input: GetEidResultRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetEidResultResponse > {
        self.client.execute(action: "GetEidResult", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取E证通结果信息
    ///
    /// 完成验证后，用EidToken调用本接口获取结果信息，EidToken生成后三天内（3\*24\*3,600秒）可多次拉取。
    @inlinable
    public func getEidResult(_ input: GetEidResultRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEidResultResponse {
        try await self.client.execute(action: "GetEidResult", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// GetEidResult请求参数结构体
    public struct GetEidResultRequest: TCRequestModel {
        /// E证通流程的唯一标识，调用GetEidToken接口时生成。
        public let eidToken: String
        
        /// 指定拉取的结果信息，取值（0：全部；1：文本类；2：身份证信息；3：最佳截图信息；5：意愿核身朗读模式相关结果；6：意愿核身问答模式相关结果）。
        /// 如 13表示拉取文本类、最佳截图信息。
        /// 默认值：0
        public let infoType: String?
        
        /// 从活体视频中截取一定张数的最佳帧。默认为0，最大为3，超出3的最多只给3张。（InfoType需要包含3）
        public let bestFramesCount: UInt64?
        
        public init (eidToken: String, infoType: String?, bestFramesCount: UInt64?) {
            self.eidToken = eidToken
            self.infoType = infoType
            self.bestFramesCount = bestFramesCount
        }
        
        enum CodingKeys: String, CodingKey {
            case eidToken = "EidToken"
            case infoType = "InfoType"
            case bestFramesCount = "BestFramesCount"
        }
    }
    
    /// GetEidResult返回参数结构体
    public struct GetEidResultResponse: TCResponseModel {
        /// 文本类信息。（基于对敏感信息的保护，验证使用的姓名和身份证号统一通过加密后从Eidinfo参数中返回，如需获取请在控制台申请返回身份信息，详见[E证通获取实名信息指引](https://cloud.tencent.com/document/product/1007/63370)）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let text: DetectInfoText
        
        /// 身份证照片信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let idCardData: DetectInfoIdCardData
        
        /// 最佳帧信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bestFrame: DetectInfoBestFrame
        
        /// Eid信息。（包括商户下用户唯一标识以及加密后的姓名、身份证号信息。解密方式详见[E证通获取实名信息指引](https://cloud.tencent.com/document/product/1007/63370)）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let eidInfo: EidInfo
        
        /// 意愿核身朗读模式相关信息。若未使用意愿核身朗读功能，该字段返回值可以不处理。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let intentionVerifyData: IntentionVerifyData
        
        /// 意愿核身问答模式相关信息。若未使用意愿核身问答模式功能，该字段返回值可以不处理。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let intentionQuestionResult: IntentionQuestionResult
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case text = "Text"
            case idCardData = "IdCardData"
            case bestFrame = "BestFrame"
            case eidInfo = "EidInfo"
            case intentionVerifyData = "IntentionVerifyData"
            case intentionQuestionResult = "IntentionQuestionResult"
            case requestId = "RequestId"
        }
    }
}