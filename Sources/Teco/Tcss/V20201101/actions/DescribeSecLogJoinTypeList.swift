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

extension Tcss {
    /// DescribeSecLogJoinTypeList请求参数结构体
    public struct DescribeSecLogJoinTypeListRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeSecLogJoinTypeList返回参数结构体
    public struct DescribeSecLogJoinTypeListResponse: TCResponse {
        /// 接入日志列表
        public let list: [SecLogJoinInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case requestId = "RequestId"
        }
    }

    /// 查询安全日志接入列表
    @inlinable
    public func describeSecLogJoinTypeList(_ input: DescribeSecLogJoinTypeListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecLogJoinTypeListResponse> {
        self.client.execute(action: "DescribeSecLogJoinTypeList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询安全日志接入列表
    @inlinable
    public func describeSecLogJoinTypeList(_ input: DescribeSecLogJoinTypeListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecLogJoinTypeListResponse {
        try await self.client.execute(action: "DescribeSecLogJoinTypeList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询安全日志接入列表
    @inlinable
    public func describeSecLogJoinTypeList(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecLogJoinTypeListResponse> {
        self.describeSecLogJoinTypeList(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询安全日志接入列表
    @inlinable
    public func describeSecLogJoinTypeList(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecLogJoinTypeListResponse {
        try await self.describeSecLogJoinTypeList(.init(), region: region, logger: logger, on: eventLoop)
    }
}
