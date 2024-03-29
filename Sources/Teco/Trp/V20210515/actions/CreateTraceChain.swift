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
    /// CreateTraceChain请求参数结构体
    public struct CreateTraceChainRequest: TCRequest {
        /// 企业ID
        public let corpId: UInt64?

        /// 溯源ID
        public let traceId: String?

        public init(corpId: UInt64? = nil, traceId: String? = nil) {
            self.corpId = corpId
            self.traceId = traceId
        }

        enum CodingKeys: String, CodingKey {
            case corpId = "CorpId"
            case traceId = "TraceId"
        }
    }

    /// CreateTraceChain返回参数结构体
    public struct CreateTraceChainResponse: TCResponse {
        /// 溯源ID
        public let traceId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case traceId = "TraceId"
            case requestId = "RequestId"
        }
    }

    /// 上链溯源信息
    @inlinable
    public func createTraceChain(_ input: CreateTraceChainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTraceChainResponse> {
        self.client.execute(action: "CreateTraceChain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 上链溯源信息
    @inlinable
    public func createTraceChain(_ input: CreateTraceChainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTraceChainResponse {
        try await self.client.execute(action: "CreateTraceChain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 上链溯源信息
    @inlinable
    public func createTraceChain(corpId: UInt64? = nil, traceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTraceChainResponse> {
        self.createTraceChain(.init(corpId: corpId, traceId: traceId), region: region, logger: logger, on: eventLoop)
    }

    /// 上链溯源信息
    @inlinable
    public func createTraceChain(corpId: UInt64? = nil, traceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTraceChainResponse {
        try await self.createTraceChain(.init(corpId: corpId, traceId: traceId), region: region, logger: logger, on: eventLoop)
    }
}
