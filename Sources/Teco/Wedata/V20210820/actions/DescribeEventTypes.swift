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

extension Wedata {
    /// DescribeEventTypes请求参数结构体
    public struct DescribeEventTypesRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeEventTypes返回参数结构体
    public struct DescribeEventTypesResponse: TCResponseModel {
        /// 事件类型
        public let data: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询事件类型列表
    @inlinable
    public func describeEventTypes(_ input: DescribeEventTypesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEventTypesResponse> {
        self.client.execute(action: "DescribeEventTypes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询事件类型列表
    @inlinable
    public func describeEventTypes(_ input: DescribeEventTypesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEventTypesResponse {
        try await self.client.execute(action: "DescribeEventTypes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询事件类型列表
    @inlinable
    public func describeEventTypes(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEventTypesResponse> {
        self.describeEventTypes(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询事件类型列表
    @inlinable
    public func describeEventTypes(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEventTypesResponse {
        try await self.describeEventTypes(.init(), region: region, logger: logger, on: eventLoop)
    }
}