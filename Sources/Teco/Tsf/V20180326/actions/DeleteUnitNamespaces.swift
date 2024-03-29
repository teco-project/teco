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

extension Tsf {
    /// DeleteUnitNamespaces请求参数结构体
    public struct DeleteUnitNamespacesRequest: TCRequest {
        /// 网关实体ID
        public let gatewayInstanceId: String

        /// 单元化命名空间ID数组
        public let unitNamespaceList: [String]

        public init(gatewayInstanceId: String, unitNamespaceList: [String]) {
            self.gatewayInstanceId = gatewayInstanceId
            self.unitNamespaceList = unitNamespaceList
        }

        enum CodingKeys: String, CodingKey {
            case gatewayInstanceId = "GatewayInstanceId"
            case unitNamespaceList = "UnitNamespaceList"
        }
    }

    /// DeleteUnitNamespaces返回参数结构体
    public struct DeleteUnitNamespacesResponse: TCResponse {
        /// 是否成功
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 删除单元化命名空间
    @inlinable
    public func deleteUnitNamespaces(_ input: DeleteUnitNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUnitNamespacesResponse> {
        self.client.execute(action: "DeleteUnitNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除单元化命名空间
    @inlinable
    public func deleteUnitNamespaces(_ input: DeleteUnitNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUnitNamespacesResponse {
        try await self.client.execute(action: "DeleteUnitNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除单元化命名空间
    @inlinable
    public func deleteUnitNamespaces(gatewayInstanceId: String, unitNamespaceList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUnitNamespacesResponse> {
        self.deleteUnitNamespaces(.init(gatewayInstanceId: gatewayInstanceId, unitNamespaceList: unitNamespaceList), region: region, logger: logger, on: eventLoop)
    }

    /// 删除单元化命名空间
    @inlinable
    public func deleteUnitNamespaces(gatewayInstanceId: String, unitNamespaceList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUnitNamespacesResponse {
        try await self.deleteUnitNamespaces(.init(gatewayInstanceId: gatewayInstanceId, unitNamespaceList: unitNamespaceList), region: region, logger: logger, on: eventLoop)
    }
}
