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

extension Postgres {
    /// DeleteReadOnlyGroupNetworkAccess请求参数结构体
    public struct DeleteReadOnlyGroupNetworkAccessRequest: TCRequest {
        /// RO组ID，形如：pgro-4t9c6g7k。
        public let readOnlyGroupId: String

        /// 私有网络统一 ID，若是基础网络则传"0"。
        public let vpcId: String

        /// 子网ID，若是基础网络则传"0"。
        public let subnetId: String

        /// 目标VIP地址。
        public let vip: String

        public init(readOnlyGroupId: String, vpcId: String, subnetId: String, vip: String) {
            self.readOnlyGroupId = readOnlyGroupId
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.vip = vip
        }

        enum CodingKeys: String, CodingKey {
            case readOnlyGroupId = "ReadOnlyGroupId"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case vip = "Vip"
        }
    }

    /// DeleteReadOnlyGroupNetworkAccess返回参数结构体
    public struct DeleteReadOnlyGroupNetworkAccessResponse: TCResponse {
        /// 流程ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let flowId: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 删除RO组网络
    ///
    /// 可对RO组进行网络的删除操作。
    @inlinable
    public func deleteReadOnlyGroupNetworkAccess(_ input: DeleteReadOnlyGroupNetworkAccessRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteReadOnlyGroupNetworkAccessResponse> {
        self.client.execute(action: "DeleteReadOnlyGroupNetworkAccess", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除RO组网络
    ///
    /// 可对RO组进行网络的删除操作。
    @inlinable
    public func deleteReadOnlyGroupNetworkAccess(_ input: DeleteReadOnlyGroupNetworkAccessRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteReadOnlyGroupNetworkAccessResponse {
        try await self.client.execute(action: "DeleteReadOnlyGroupNetworkAccess", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除RO组网络
    ///
    /// 可对RO组进行网络的删除操作。
    @inlinable
    public func deleteReadOnlyGroupNetworkAccess(readOnlyGroupId: String, vpcId: String, subnetId: String, vip: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteReadOnlyGroupNetworkAccessResponse> {
        self.deleteReadOnlyGroupNetworkAccess(.init(readOnlyGroupId: readOnlyGroupId, vpcId: vpcId, subnetId: subnetId, vip: vip), region: region, logger: logger, on: eventLoop)
    }

    /// 删除RO组网络
    ///
    /// 可对RO组进行网络的删除操作。
    @inlinable
    public func deleteReadOnlyGroupNetworkAccess(readOnlyGroupId: String, vpcId: String, subnetId: String, vip: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteReadOnlyGroupNetworkAccessResponse {
        try await self.deleteReadOnlyGroupNetworkAccess(.init(readOnlyGroupId: readOnlyGroupId, vpcId: vpcId, subnetId: subnetId, vip: vip), region: region, logger: logger, on: eventLoop)
    }
}
