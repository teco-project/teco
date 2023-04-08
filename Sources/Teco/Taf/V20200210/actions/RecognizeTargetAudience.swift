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

extension Taf {
    /// RecognizeTargetAudience请求参数结构体
    public struct RecognizeTargetAudienceRequest: TCRequestModel {
        /// 业务数据
        public let bspData: InputRecognizeTargetAudience

        /// 业务加密数据
        public let businessEncryptData: InputBusinessEncryptData?

        public init(bspData: InputRecognizeTargetAudience, businessEncryptData: InputBusinessEncryptData? = nil) {
            self.bspData = bspData
            self.businessEncryptData = businessEncryptData
        }

        enum CodingKeys: String, CodingKey {
            case bspData = "BspData"
            case businessEncryptData = "BusinessEncryptData"
        }
    }

    /// RecognizeTargetAudience返回参数结构体
    public struct RecognizeTargetAudienceResponse: TCResponseModel {
        /// 回包数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: OutputRecognizeTargetAudience?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 流量反欺诈-流量验准
    @inlinable
    public func recognizeTargetAudience(_ input: RecognizeTargetAudienceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RecognizeTargetAudienceResponse> {
        self.client.execute(action: "RecognizeTargetAudience", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 流量反欺诈-流量验准
    @inlinable
    public func recognizeTargetAudience(_ input: RecognizeTargetAudienceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecognizeTargetAudienceResponse {
        try await self.client.execute(action: "RecognizeTargetAudience", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 流量反欺诈-流量验准
    @inlinable
    public func recognizeTargetAudience(bspData: InputRecognizeTargetAudience, businessEncryptData: InputBusinessEncryptData? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RecognizeTargetAudienceResponse> {
        self.recognizeTargetAudience(.init(bspData: bspData, businessEncryptData: businessEncryptData), region: region, logger: logger, on: eventLoop)
    }

    /// 流量反欺诈-流量验准
    @inlinable
    public func recognizeTargetAudience(bspData: InputRecognizeTargetAudience, businessEncryptData: InputBusinessEncryptData? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecognizeTargetAudienceResponse {
        try await self.recognizeTargetAudience(.init(bspData: bspData, businessEncryptData: businessEncryptData), region: region, logger: logger, on: eventLoop)
    }
}
