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

extension Gaap {
    /// OpenProxyGroup请求参数结构体
    public struct OpenProxyGroupRequest: TCRequest {
        /// 通道组实例 ID
        public let groupId: String

        public init(groupId: String) {
            self.groupId = groupId
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
        }
    }

    /// OpenProxyGroup返回参数结构体
    public struct OpenProxyGroupResponse: TCResponse {
        /// 非关闭状态下的通道实例ID列表，不可开启。
        public let invalidStatusInstanceSet: [String]

        /// 开启操作失败的通道实例ID列表。
        public let operationFailedInstanceSet: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case invalidStatusInstanceSet = "InvalidStatusInstanceSet"
            case operationFailedInstanceSet = "OperationFailedInstanceSet"
            case requestId = "RequestId"
        }
    }

    /// 开启通道组
    ///
    /// 该接口（OpenProxyGroup）用于开启一条通道组中的所有通道
    @inlinable
    public func openProxyGroup(_ input: OpenProxyGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OpenProxyGroupResponse> {
        self.client.execute(action: "OpenProxyGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开启通道组
    ///
    /// 该接口（OpenProxyGroup）用于开启一条通道组中的所有通道
    @inlinable
    public func openProxyGroup(_ input: OpenProxyGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OpenProxyGroupResponse {
        try await self.client.execute(action: "OpenProxyGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开启通道组
    ///
    /// 该接口（OpenProxyGroup）用于开启一条通道组中的所有通道
    @inlinable
    public func openProxyGroup(groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OpenProxyGroupResponse> {
        self.openProxyGroup(.init(groupId: groupId), region: region, logger: logger, on: eventLoop)
    }

    /// 开启通道组
    ///
    /// 该接口（OpenProxyGroup）用于开启一条通道组中的所有通道
    @inlinable
    public func openProxyGroup(groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OpenProxyGroupResponse {
        try await self.openProxyGroup(.init(groupId: groupId), region: region, logger: logger, on: eventLoop)
    }
}
