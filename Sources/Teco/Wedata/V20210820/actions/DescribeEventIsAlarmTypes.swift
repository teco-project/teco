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
    /// DescribeEventIsAlarmTypes请求参数结构体
    public struct DescribeEventIsAlarmTypesRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeEventIsAlarmTypes返回参数结构体
    public struct DescribeEventIsAlarmTypesResponse: TCResponseModel {
        /// 是否告警.取值范围
        ///
        /// - yes : 表示告警
        ///
        /// - no : 表示不告警
        public let data: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 事件是否告警过滤条件
    @inlinable
    public func describeEventIsAlarmTypes(_ input: DescribeEventIsAlarmTypesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEventIsAlarmTypesResponse> {
        self.client.execute(action: "DescribeEventIsAlarmTypes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 事件是否告警过滤条件
    @inlinable
    public func describeEventIsAlarmTypes(_ input: DescribeEventIsAlarmTypesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEventIsAlarmTypesResponse {
        try await self.client.execute(action: "DescribeEventIsAlarmTypes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 事件是否告警过滤条件
    @inlinable
    public func describeEventIsAlarmTypes(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEventIsAlarmTypesResponse> {
        self.describeEventIsAlarmTypes(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 事件是否告警过滤条件
    @inlinable
    public func describeEventIsAlarmTypes(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEventIsAlarmTypesResponse {
        try await self.describeEventIsAlarmTypes(.init(), region: region, logger: logger, on: eventLoop)
    }
}
