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

extension Tcr {
    /// DescribeInstanceStatus请求参数结构体
    public struct DescribeInstanceStatusRequest: TCRequest {
        /// 实例ID的数组
        public let registryIds: [String]

        public init(registryIds: [String]) {
            self.registryIds = registryIds
        }

        enum CodingKeys: String, CodingKey {
            case registryIds = "RegistryIds"
        }
    }

    /// DescribeInstanceStatus返回参数结构体
    public struct DescribeInstanceStatusResponse: TCResponse {
        /// 实例的状态列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let registryStatusSet: [RegistryStatus]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case registryStatusSet = "RegistryStatusSet"
            case requestId = "RequestId"
        }
    }

    /// 查询实例状态
    ///
    /// 查询实例当前状态以及过程信息
    @inlinable
    public func describeInstanceStatus(_ input: DescribeInstanceStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceStatusResponse> {
        self.client.execute(action: "DescribeInstanceStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例状态
    ///
    /// 查询实例当前状态以及过程信息
    @inlinable
    public func describeInstanceStatus(_ input: DescribeInstanceStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceStatusResponse {
        try await self.client.execute(action: "DescribeInstanceStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例状态
    ///
    /// 查询实例当前状态以及过程信息
    @inlinable
    public func describeInstanceStatus(registryIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceStatusResponse> {
        self.describeInstanceStatus(.init(registryIds: registryIds), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例状态
    ///
    /// 查询实例当前状态以及过程信息
    @inlinable
    public func describeInstanceStatus(registryIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceStatusResponse {
        try await self.describeInstanceStatus(.init(registryIds: registryIds), region: region, logger: logger, on: eventLoop)
    }
}
