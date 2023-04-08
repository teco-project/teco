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

extension Cynosdb {
    /// PauseServerless请求参数结构体
    public struct PauseServerlessRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 是否强制暂停，忽略当前的用户链接  0:不强制  1:强制， 默认为1
        public let forcePause: Int64?

        public init(clusterId: String, forcePause: Int64? = nil) {
            self.clusterId = clusterId
            self.forcePause = forcePause
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case forcePause = "ForcePause"
        }
    }

    /// PauseServerless返回参数结构体
    public struct PauseServerlessResponse: TCResponseModel {
        /// 异步流程ID
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 暂停serverless集群
    @inlinable
    public func pauseServerless(_ input: PauseServerlessRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PauseServerlessResponse> {
        self.client.execute(action: "PauseServerless", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 暂停serverless集群
    @inlinable
    public func pauseServerless(_ input: PauseServerlessRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PauseServerlessResponse {
        try await self.client.execute(action: "PauseServerless", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 暂停serverless集群
    @inlinable
    public func pauseServerless(clusterId: String, forcePause: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PauseServerlessResponse> {
        self.pauseServerless(.init(clusterId: clusterId, forcePause: forcePause), region: region, logger: logger, on: eventLoop)
    }

    /// 暂停serverless集群
    @inlinable
    public func pauseServerless(clusterId: String, forcePause: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PauseServerlessResponse {
        try await self.pauseServerless(.init(clusterId: clusterId, forcePause: forcePause), region: region, logger: logger, on: eventLoop)
    }
}
