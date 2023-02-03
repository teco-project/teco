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
    /// DeleteClusterEndpointVip请求参数结构体
    public struct DeleteClusterEndpointVipRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// DeleteClusterEndpointVip返回参数结构体
    public struct DeleteClusterEndpointVipResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除托管集群外网访问端口
    ///
    /// 删除托管集群外网访问端口（老的方式，仅支持托管集群外网端口）
    @inlinable @discardableResult
    public func deleteClusterEndpointVip(_ input: DeleteClusterEndpointVipRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteClusterEndpointVipResponse> {
        self.client.execute(action: "DeleteClusterEndpointVip", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除托管集群外网访问端口
    ///
    /// 删除托管集群外网访问端口（老的方式，仅支持托管集群外网端口）
    @inlinable @discardableResult
    public func deleteClusterEndpointVip(_ input: DeleteClusterEndpointVipRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteClusterEndpointVipResponse {
        try await self.client.execute(action: "DeleteClusterEndpointVip", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除托管集群外网访问端口
    ///
    /// 删除托管集群外网访问端口（老的方式，仅支持托管集群外网端口）
    @inlinable @discardableResult
    public func deleteClusterEndpointVip(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteClusterEndpointVipResponse> {
        let input = DeleteClusterEndpointVipRequest(clusterId: clusterId)
        return self.client.execute(action: "DeleteClusterEndpointVip", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除托管集群外网访问端口
    ///
    /// 删除托管集群外网访问端口（老的方式，仅支持托管集群外网端口）
    @inlinable @discardableResult
    public func deleteClusterEndpointVip(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteClusterEndpointVipResponse {
        let input = DeleteClusterEndpointVipRequest(clusterId: clusterId)
        return try await self.client.execute(action: "DeleteClusterEndpointVip", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
