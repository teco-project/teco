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

extension Taf {
    /// RecognizePreciseTargetAudience请求参数结构体
    public struct RecognizePreciseTargetAudienceRequest: TCRequestModel {
        /// 业务数据
        public let bspData: InputRecognizeTargetAudience

        public init(bspData: InputRecognizeTargetAudience) {
            self.bspData = bspData
        }

        enum CodingKeys: String, CodingKey {
            case bspData = "BspData"
        }
    }

    /// RecognizePreciseTargetAudience返回参数结构体
    public struct RecognizePreciseTargetAudienceResponse: TCResponseModel {
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

    /// 流量反欺诈-流量验准高级版
    @inlinable
    public func recognizePreciseTargetAudience(_ input: RecognizePreciseTargetAudienceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RecognizePreciseTargetAudienceResponse> {
        self.client.execute(action: "RecognizePreciseTargetAudience", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 流量反欺诈-流量验准高级版
    @inlinable
    public func recognizePreciseTargetAudience(_ input: RecognizePreciseTargetAudienceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecognizePreciseTargetAudienceResponse {
        try await self.client.execute(action: "RecognizePreciseTargetAudience", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 流量反欺诈-流量验准高级版
    @inlinable
    public func recognizePreciseTargetAudience(bspData: InputRecognizeTargetAudience, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RecognizePreciseTargetAudienceResponse> {
        let input = RecognizePreciseTargetAudienceRequest(bspData: bspData)
        return self.client.execute(action: "RecognizePreciseTargetAudience", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 流量反欺诈-流量验准高级版
    @inlinable
    public func recognizePreciseTargetAudience(bspData: InputRecognizeTargetAudience, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecognizePreciseTargetAudienceResponse {
        let input = RecognizePreciseTargetAudienceRequest(bspData: bspData)
        return try await self.client.execute(action: "RecognizePreciseTargetAudience", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
