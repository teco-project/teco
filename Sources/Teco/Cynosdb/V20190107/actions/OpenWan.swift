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
    /// OpenWan请求参数结构体
    public struct OpenWanRequest: TCRequest {
        /// 实例组id
        public let instanceGrpId: String

        public init(instanceGrpId: String) {
            self.instanceGrpId = instanceGrpId
        }

        enum CodingKeys: String, CodingKey {
            case instanceGrpId = "InstanceGrpId"
        }
    }

    /// OpenWan返回参数结构体
    public struct OpenWanResponse: TCResponse {
        /// 任务流ID
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 开通外网
    ///
    /// 本接口（OpenWan）用于开通外网
    @inlinable
    public func openWan(_ input: OpenWanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OpenWanResponse> {
        self.client.execute(action: "OpenWan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开通外网
    ///
    /// 本接口（OpenWan）用于开通外网
    @inlinable
    public func openWan(_ input: OpenWanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OpenWanResponse {
        try await self.client.execute(action: "OpenWan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开通外网
    ///
    /// 本接口（OpenWan）用于开通外网
    @inlinable
    public func openWan(instanceGrpId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OpenWanResponse> {
        self.openWan(.init(instanceGrpId: instanceGrpId), region: region, logger: logger, on: eventLoop)
    }

    /// 开通外网
    ///
    /// 本接口（OpenWan）用于开通外网
    @inlinable
    public func openWan(instanceGrpId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OpenWanResponse {
        try await self.openWan(.init(instanceGrpId: instanceGrpId), region: region, logger: logger, on: eventLoop)
    }
}
