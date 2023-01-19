//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Cvm {
    /// CreateHpcCluster请求参数结构体
    public struct CreateHpcClusterRequest: TCRequestModel {
        /// 可用区。
        public let zone: String

        /// 高性能计算集群名称。
        public let name: String

        /// 高性能计算集群备注。
        public let remark: String?

        public init(zone: String, name: String, remark: String? = nil) {
            self.zone = zone
            self.name = name
            self.remark = remark
        }

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case name = "Name"
            case remark = "Remark"
        }
    }

    /// CreateHpcCluster返回参数结构体
    public struct CreateHpcClusterResponse: TCResponseModel {
        /// 高性能计算集群信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hpcClusterSet: [HpcClusterInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case hpcClusterSet = "HpcClusterSet"
            case requestId = "RequestId"
        }
    }

    /// 创建高性能计算集群
    @inlinable
    public func createHpcCluster(_ input: CreateHpcClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateHpcClusterResponse> {
        self.client.execute(action: "CreateHpcCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建高性能计算集群
    @inlinable
    public func createHpcCluster(_ input: CreateHpcClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateHpcClusterResponse {
        try await self.client.execute(action: "CreateHpcCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建高性能计算集群
    @inlinable
    public func createHpcCluster(zone: String, name: String, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateHpcClusterResponse> {
        self.createHpcCluster(CreateHpcClusterRequest(zone: zone, name: name, remark: remark), region: region, logger: logger, on: eventLoop)
    }

    /// 创建高性能计算集群
    @inlinable
    public func createHpcCluster(zone: String, name: String, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateHpcClusterResponse {
        try await self.createHpcCluster(CreateHpcClusterRequest(zone: zone, name: name, remark: remark), region: region, logger: logger, on: eventLoop)
    }
}
