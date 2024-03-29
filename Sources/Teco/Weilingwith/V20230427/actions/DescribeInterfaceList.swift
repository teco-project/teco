//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Weilingwith {
    /// DescribeInterfaceList请求参数结构体
    public struct DescribeInterfaceListRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeInterfaceList返回参数结构体
    public struct DescribeInterfaceListResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 查询接口列表
    @inlinable @discardableResult
    public func describeInterfaceList(_ input: DescribeInterfaceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInterfaceListResponse> {
        self.client.execute(action: "DescribeInterfaceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询接口列表
    @inlinable @discardableResult
    public func describeInterfaceList(_ input: DescribeInterfaceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInterfaceListResponse {
        try await self.client.execute(action: "DescribeInterfaceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询接口列表
    @inlinable @discardableResult
    public func describeInterfaceList(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInterfaceListResponse> {
        self.describeInterfaceList(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询接口列表
    @inlinable @discardableResult
    public func describeInterfaceList(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInterfaceListResponse {
        try await self.describeInterfaceList(.init(), region: region, logger: logger, on: eventLoop)
    }
}
