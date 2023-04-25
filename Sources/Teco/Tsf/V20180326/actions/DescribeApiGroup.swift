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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tsf {
    /// DescribeApiGroup请求参数结构体
    public struct DescribeApiGroupRequest: TCRequestModel {
        /// API 分组ID
        public let groupId: String

        public init(groupId: String) {
            self.groupId = groupId
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
        }
    }

    /// DescribeApiGroup返回参数结构体
    public struct DescribeApiGroupResponse: TCResponseModel {
        /// API分组信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ApiGroupInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询API分组
    @inlinable
    public func describeApiGroup(_ input: DescribeApiGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApiGroupResponse> {
        self.client.execute(action: "DescribeApiGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询API分组
    @inlinable
    public func describeApiGroup(_ input: DescribeApiGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApiGroupResponse {
        try await self.client.execute(action: "DescribeApiGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询API分组
    @inlinable
    public func describeApiGroup(groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApiGroupResponse> {
        self.describeApiGroup(.init(groupId: groupId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询API分组
    @inlinable
    public func describeApiGroup(groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApiGroupResponse {
        try await self.describeApiGroup(.init(groupId: groupId), region: region, logger: logger, on: eventLoop)
    }
}
