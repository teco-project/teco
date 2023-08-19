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

extension Yunjing {
    /// DescribeTagMachines请求参数结构体
    public struct DescribeTagMachinesRequest: TCRequest {
        /// 标签ID
        public let id: UInt64

        public init(id: UInt64) {
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
        }
    }

    /// DescribeTagMachines返回参数结构体
    public struct DescribeTagMachinesResponse: TCResponse {
        /// 列表数据
        public let list: [TagMachine]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case requestId = "RequestId"
        }
    }

    /// 获取指定标签关联的服务器信息
    @inlinable
    public func describeTagMachines(_ input: DescribeTagMachinesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTagMachinesResponse> {
        self.client.execute(action: "DescribeTagMachines", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取指定标签关联的服务器信息
    @inlinable
    public func describeTagMachines(_ input: DescribeTagMachinesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTagMachinesResponse {
        try await self.client.execute(action: "DescribeTagMachines", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取指定标签关联的服务器信息
    @inlinable
    public func describeTagMachines(id: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTagMachinesResponse> {
        self.describeTagMachines(.init(id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 获取指定标签关联的服务器信息
    @inlinable
    public func describeTagMachines(id: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTagMachinesResponse {
        try await self.describeTagMachines(.init(id: id), region: region, logger: logger, on: eventLoop)
    }
}
