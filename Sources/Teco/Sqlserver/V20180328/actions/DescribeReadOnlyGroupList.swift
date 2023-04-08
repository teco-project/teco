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

extension Sqlserver {
    /// DescribeReadOnlyGroupList请求参数结构体
    public struct DescribeReadOnlyGroupListRequest: TCRequestModel {
        /// 主实例ID，格式如：mssql-3l3fgqn7
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeReadOnlyGroupList返回参数结构体
    public struct DescribeReadOnlyGroupListResponse: TCResponseModel {
        /// 只读组列表
        public let readOnlyGroupSet: [ReadOnlyGroup]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case readOnlyGroupSet = "ReadOnlyGroupSet"
            case requestId = "RequestId"
        }
    }

    /// 查询只读组列表
    ///
    /// 本接口（DescribeReadOnlyGroupList）用于查询只读组列表。
    @inlinable
    public func describeReadOnlyGroupList(_ input: DescribeReadOnlyGroupListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReadOnlyGroupListResponse> {
        self.client.execute(action: "DescribeReadOnlyGroupList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询只读组列表
    ///
    /// 本接口（DescribeReadOnlyGroupList）用于查询只读组列表。
    @inlinable
    public func describeReadOnlyGroupList(_ input: DescribeReadOnlyGroupListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReadOnlyGroupListResponse {
        try await self.client.execute(action: "DescribeReadOnlyGroupList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询只读组列表
    ///
    /// 本接口（DescribeReadOnlyGroupList）用于查询只读组列表。
    @inlinable
    public func describeReadOnlyGroupList(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReadOnlyGroupListResponse> {
        self.describeReadOnlyGroupList(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询只读组列表
    ///
    /// 本接口（DescribeReadOnlyGroupList）用于查询只读组列表。
    @inlinable
    public func describeReadOnlyGroupList(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReadOnlyGroupListResponse {
        try await self.describeReadOnlyGroupList(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
