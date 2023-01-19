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

extension Tdcpg {
    /// ModifyClusterEndpointWanStatus请求参数结构体
    public struct ModifyClusterEndpointWanStatusRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 接入点ID
        public let endpointId: String

        /// 取值为：
        ///  - OPEN：开启外网
        ///  - CLOSE：关闭外网
        public let wanStatus: String

        public init(clusterId: String, endpointId: String, wanStatus: String) {
            self.clusterId = clusterId
            self.endpointId = endpointId
            self.wanStatus = wanStatus
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case endpointId = "EndpointId"
            case wanStatus = "WanStatus"
        }
    }

    /// ModifyClusterEndpointWanStatus返回参数结构体
    public struct ModifyClusterEndpointWanStatusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改接入点外网状态
    ///
    /// 开启或者关闭接入点外网
    @inlinable
    public func modifyClusterEndpointWanStatus(_ input: ModifyClusterEndpointWanStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyClusterEndpointWanStatusResponse> {
        self.client.execute(action: "ModifyClusterEndpointWanStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改接入点外网状态
    ///
    /// 开启或者关闭接入点外网
    @inlinable
    public func modifyClusterEndpointWanStatus(_ input: ModifyClusterEndpointWanStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClusterEndpointWanStatusResponse {
        try await self.client.execute(action: "ModifyClusterEndpointWanStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改接入点外网状态
    ///
    /// 开启或者关闭接入点外网
    @inlinable
    public func modifyClusterEndpointWanStatus(clusterId: String, endpointId: String, wanStatus: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyClusterEndpointWanStatusResponse> {
        self.modifyClusterEndpointWanStatus(ModifyClusterEndpointWanStatusRequest(clusterId: clusterId, endpointId: endpointId, wanStatus: wanStatus), region: region, logger: logger, on: eventLoop)
    }

    /// 修改接入点外网状态
    ///
    /// 开启或者关闭接入点外网
    @inlinable
    public func modifyClusterEndpointWanStatus(clusterId: String, endpointId: String, wanStatus: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClusterEndpointWanStatusResponse {
        try await self.modifyClusterEndpointWanStatus(ModifyClusterEndpointWanStatusRequest(clusterId: clusterId, endpointId: endpointId, wanStatus: wanStatus), region: region, logger: logger, on: eventLoop)
    }
}
