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
    /// OpenClusterReadOnlyInstanceGroupAccess请求参数结构体
    public struct OpenClusterReadOnlyInstanceGroupAccessRequest: TCRequest {
        public init() {
        }
    }

    /// OpenClusterReadOnlyInstanceGroupAccess返回参数结构体
    public struct OpenClusterReadOnlyInstanceGroupAccessResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 开启只读实例组接入
    @inlinable @discardableResult
    public func openClusterReadOnlyInstanceGroupAccess(_ input: OpenClusterReadOnlyInstanceGroupAccessRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OpenClusterReadOnlyInstanceGroupAccessResponse> {
        self.client.execute(action: "OpenClusterReadOnlyInstanceGroupAccess", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开启只读实例组接入
    @inlinable @discardableResult
    public func openClusterReadOnlyInstanceGroupAccess(_ input: OpenClusterReadOnlyInstanceGroupAccessRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OpenClusterReadOnlyInstanceGroupAccessResponse {
        try await self.client.execute(action: "OpenClusterReadOnlyInstanceGroupAccess", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开启只读实例组接入
    @inlinable @discardableResult
    public func openClusterReadOnlyInstanceGroupAccess(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OpenClusterReadOnlyInstanceGroupAccessResponse> {
        self.openClusterReadOnlyInstanceGroupAccess(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 开启只读实例组接入
    @inlinable @discardableResult
    public func openClusterReadOnlyInstanceGroupAccess(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OpenClusterReadOnlyInstanceGroupAccessResponse {
        try await self.openClusterReadOnlyInstanceGroupAccess(.init(), region: region, logger: logger, on: eventLoop)
    }
}
