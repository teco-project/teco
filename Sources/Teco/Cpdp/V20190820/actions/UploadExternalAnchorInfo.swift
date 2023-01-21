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

extension Cpdp {
    /// UploadExternalAnchorInfo请求参数结构体
    public struct UploadExternalAnchorInfoRequest: TCRequestModel {
        /// 主播Id
        public let anchorId: String

        /// 身份证正面图片下载链接
        public let idCardFront: String?

        /// 身份证反面图片下载链接
        public let idCardReverse: String?

        public init(anchorId: String, idCardFront: String? = nil, idCardReverse: String? = nil) {
            self.anchorId = anchorId
            self.idCardFront = idCardFront
            self.idCardReverse = idCardReverse
        }

        enum CodingKeys: String, CodingKey {
            case anchorId = "AnchorId"
            case idCardFront = "IdCardFront"
            case idCardReverse = "IdCardReverse"
        }
    }

    /// UploadExternalAnchorInfo返回参数结构体
    public struct UploadExternalAnchorInfoResponse: TCResponseModel {
        /// 错误码。响应成功："SUCCESS"，其他为不成功。
        public let errCode: String

        /// 响应消息。
        public let errMessage: String

        /// 该字段为null。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 灵云-上传主播信息
    @inlinable
    public func uploadExternalAnchorInfo(_ input: UploadExternalAnchorInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadExternalAnchorInfoResponse> {
        self.client.execute(action: "UploadExternalAnchorInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 灵云-上传主播信息
    @inlinable
    public func uploadExternalAnchorInfo(_ input: UploadExternalAnchorInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadExternalAnchorInfoResponse {
        try await self.client.execute(action: "UploadExternalAnchorInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 灵云-上传主播信息
    @inlinable
    public func uploadExternalAnchorInfo(anchorId: String, idCardFront: String? = nil, idCardReverse: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadExternalAnchorInfoResponse> {
        self.uploadExternalAnchorInfo(UploadExternalAnchorInfoRequest(anchorId: anchorId, idCardFront: idCardFront, idCardReverse: idCardReverse), region: region, logger: logger, on: eventLoop)
    }

    /// 灵云-上传主播信息
    @inlinable
    public func uploadExternalAnchorInfo(anchorId: String, idCardFront: String? = nil, idCardReverse: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadExternalAnchorInfoResponse {
        try await self.uploadExternalAnchorInfo(UploadExternalAnchorInfoRequest(anchorId: anchorId, idCardFront: idCardFront, idCardReverse: idCardReverse), region: region, logger: logger, on: eventLoop)
    }
}
