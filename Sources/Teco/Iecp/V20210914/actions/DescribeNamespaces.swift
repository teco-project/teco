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

extension Iecp {
    /// DescribeNamespaces请求参数结构体
    public struct DescribeNamespacesRequest: TCRequest {
        /// IECP边缘单元ID
        public let edgeUnitID: UInt64

        /// 边缘节点名称模糊搜索串
        public let namePattern: String?

        public init(edgeUnitID: UInt64, namePattern: String? = nil) {
            self.edgeUnitID = edgeUnitID
            self.namePattern = namePattern
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitID = "EdgeUnitID"
            case namePattern = "NamePattern"
        }
    }

    /// DescribeNamespaces返回参数结构体
    public struct DescribeNamespacesResponse: TCResponse {
        /// 命名空间信息列表
        public let items: [NamespaceInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case items = "Items"
            case requestId = "RequestId"
        }
    }

    /// 获取命名空间列表信息
    @inlinable
    public func describeNamespaces(_ input: DescribeNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNamespacesResponse> {
        self.client.execute(action: "DescribeNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取命名空间列表信息
    @inlinable
    public func describeNamespaces(_ input: DescribeNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNamespacesResponse {
        try await self.client.execute(action: "DescribeNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取命名空间列表信息
    @inlinable
    public func describeNamespaces(edgeUnitID: UInt64, namePattern: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNamespacesResponse> {
        self.describeNamespaces(.init(edgeUnitID: edgeUnitID, namePattern: namePattern), region: region, logger: logger, on: eventLoop)
    }

    /// 获取命名空间列表信息
    @inlinable
    public func describeNamespaces(edgeUnitID: UInt64, namePattern: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNamespacesResponse {
        try await self.describeNamespaces(.init(edgeUnitID: edgeUnitID, namePattern: namePattern), region: region, logger: logger, on: eventLoop)
    }
}
