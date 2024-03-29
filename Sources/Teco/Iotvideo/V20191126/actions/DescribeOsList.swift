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

extension Iotvideo {
    /// DescribeOsList请求参数结构体
    public struct DescribeOsListRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeOsList返回参数结构体
    public struct DescribeOsListResponse: TCResponse {
        /// 系统类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: SystemType?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查看操作系统支持的芯片列表
    @inlinable
    public func describeOsList(_ input: DescribeOsListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOsListResponse> {
        self.client.execute(action: "DescribeOsList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看操作系统支持的芯片列表
    @inlinable
    public func describeOsList(_ input: DescribeOsListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOsListResponse {
        try await self.client.execute(action: "DescribeOsList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看操作系统支持的芯片列表
    @inlinable
    public func describeOsList(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOsListResponse> {
        self.describeOsList(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查看操作系统支持的芯片列表
    @inlinable
    public func describeOsList(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOsListResponse {
        try await self.describeOsList(.init(), region: region, logger: logger, on: eventLoop)
    }
}
