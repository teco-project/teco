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

extension Tke {
    /// CancelClusterRelease请求参数结构体
    public struct CancelClusterReleaseRequest: TCRequestModel {
        /// 应用ID
        public let id: String

        /// 集群ID
        public let clusterId: String?

        /// 集群类型
        public let clusterType: String?

        public init(id: String, clusterId: String? = nil, clusterType: String? = nil) {
            self.id = id
            self.clusterId = clusterId
            self.clusterType = clusterType
        }

        enum CodingKeys: String, CodingKey {
            case id = "ID"
            case clusterId = "ClusterId"
            case clusterType = "ClusterType"
        }
    }

    /// CancelClusterRelease返回参数结构体
    public struct CancelClusterReleaseResponse: TCResponseModel {
        /// 应用信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let release: PendingRelease?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case release = "Release"
            case requestId = "RequestId"
        }
    }

    /// 集群取消安装应用
    ///
    /// 在应用市场中取消安装失败的应用
    @inlinable
    public func cancelClusterRelease(_ input: CancelClusterReleaseRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelClusterReleaseResponse> {
        self.client.execute(action: "CancelClusterRelease", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 集群取消安装应用
    ///
    /// 在应用市场中取消安装失败的应用
    @inlinable
    public func cancelClusterRelease(_ input: CancelClusterReleaseRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelClusterReleaseResponse {
        try await self.client.execute(action: "CancelClusterRelease", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 集群取消安装应用
    ///
    /// 在应用市场中取消安装失败的应用
    @inlinable
    public func cancelClusterRelease(id: String, clusterId: String? = nil, clusterType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelClusterReleaseResponse> {
        self.cancelClusterRelease(.init(id: id, clusterId: clusterId, clusterType: clusterType), region: region, logger: logger, on: eventLoop)
    }

    /// 集群取消安装应用
    ///
    /// 在应用市场中取消安装失败的应用
    @inlinable
    public func cancelClusterRelease(id: String, clusterId: String? = nil, clusterType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelClusterReleaseResponse {
        try await self.cancelClusterRelease(.init(id: id, clusterId: clusterId, clusterType: clusterType), region: region, logger: logger, on: eventLoop)
    }
}
