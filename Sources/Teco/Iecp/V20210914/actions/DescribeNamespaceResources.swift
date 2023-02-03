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

extension Iecp {
    /// DescribeNamespaceResources请求参数结构体
    public struct DescribeNamespaceResourcesRequest: TCRequestModel {
        /// 单元ID
        public let edgeUnitID: UInt64

        /// 命名空间
        public let namespace: String

        public init(edgeUnitID: UInt64, namespace: String) {
            self.edgeUnitID = edgeUnitID
            self.namespace = namespace
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitID = "EdgeUnitID"
            case namespace = "Namespace"
        }
    }

    /// DescribeNamespaceResources返回参数结构体
    public struct DescribeNamespaceResourcesResponse: TCResponseModel {
        /// 资源列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resources: [NamespaceResource]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case resources = "Resources"
            case requestId = "RequestId"
        }
    }

    /// 获取命名空间下的资源信息
    @inlinable
    public func describeNamespaceResources(_ input: DescribeNamespaceResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNamespaceResourcesResponse> {
        self.client.execute(action: "DescribeNamespaceResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取命名空间下的资源信息
    @inlinable
    public func describeNamespaceResources(_ input: DescribeNamespaceResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNamespaceResourcesResponse {
        try await self.client.execute(action: "DescribeNamespaceResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取命名空间下的资源信息
    @inlinable
    public func describeNamespaceResources(edgeUnitID: UInt64, namespace: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNamespaceResourcesResponse> {
        let input = DescribeNamespaceResourcesRequest(edgeUnitID: edgeUnitID, namespace: namespace)
        return self.client.execute(action: "DescribeNamespaceResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取命名空间下的资源信息
    @inlinable
    public func describeNamespaceResources(edgeUnitID: UInt64, namespace: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNamespaceResourcesResponse {
        let input = DescribeNamespaceResourcesRequest(edgeUnitID: edgeUnitID, namespace: namespace)
        return try await self.client.execute(action: "DescribeNamespaceResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
