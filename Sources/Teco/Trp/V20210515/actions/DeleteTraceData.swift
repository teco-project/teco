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

import Logging
import NIOCore
import TecoCore

extension Trp {
    /// DeleteTraceData请求参数结构体
    public struct DeleteTraceDataRequest: TCRequest {
        /// 溯源ID
        public let traceId: String

        /// 企业ID
        public let corpId: UInt64?

        public init(traceId: String, corpId: UInt64? = nil) {
            self.traceId = traceId
            self.corpId = corpId
        }

        enum CodingKeys: String, CodingKey {
            case traceId = "TraceId"
            case corpId = "CorpId"
        }
    }

    /// DeleteTraceData返回参数结构体
    public struct DeleteTraceDataResponse: TCResponse {
        /// 溯源id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let traceId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case traceId = "TraceId"
            case requestId = "RequestId"
        }
    }

    /// 删除溯源信息
    ///
    /// 删除溯源信息，如果已经上链则不可删除
    @inlinable
    public func deleteTraceData(_ input: DeleteTraceDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTraceDataResponse> {
        self.client.execute(action: "DeleteTraceData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除溯源信息
    ///
    /// 删除溯源信息，如果已经上链则不可删除
    @inlinable
    public func deleteTraceData(_ input: DeleteTraceDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTraceDataResponse {
        try await self.client.execute(action: "DeleteTraceData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除溯源信息
    ///
    /// 删除溯源信息，如果已经上链则不可删除
    @inlinable
    public func deleteTraceData(traceId: String, corpId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTraceDataResponse> {
        self.deleteTraceData(.init(traceId: traceId, corpId: corpId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除溯源信息
    ///
    /// 删除溯源信息，如果已经上链则不可删除
    @inlinable
    public func deleteTraceData(traceId: String, corpId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTraceDataResponse {
        try await self.deleteTraceData(.init(traceId: traceId, corpId: corpId), region: region, logger: logger, on: eventLoop)
    }
}
