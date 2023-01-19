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

extension Clb {
    /// BatchDeregisterTargets请求参数结构体
    public struct BatchDeregisterTargetsRequest: TCRequestModel {
        /// 负载均衡ID。
        public let loadBalancerId: String

        /// 解绑目标。
        public let targets: [BatchTarget]

        public init(loadBalancerId: String, targets: [BatchTarget]) {
            self.loadBalancerId = loadBalancerId
            self.targets = targets
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case targets = "Targets"
        }
    }

    /// BatchDeregisterTargets返回参数结构体
    public struct BatchDeregisterTargetsResponse: TCResponseModel {
        /// 解绑失败的监听器ID。
        public let failListenerIdSet: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case failListenerIdSet = "FailListenerIdSet"
            case requestId = "RequestId"
        }
    }

    /// 批量解绑四七层后端服务
    ///
    /// 批量解绑四七层后端服务。批量解绑的资源数量上限为500。只支持VPC网络负载均衡。
    @inlinable
    public func batchDeregisterTargets(_ input: BatchDeregisterTargetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDeregisterTargetsResponse> {
        self.client.execute(action: "BatchDeregisterTargets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量解绑四七层后端服务
    ///
    /// 批量解绑四七层后端服务。批量解绑的资源数量上限为500。只支持VPC网络负载均衡。
    @inlinable
    public func batchDeregisterTargets(_ input: BatchDeregisterTargetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDeregisterTargetsResponse {
        try await self.client.execute(action: "BatchDeregisterTargets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量解绑四七层后端服务
    ///
    /// 批量解绑四七层后端服务。批量解绑的资源数量上限为500。只支持VPC网络负载均衡。
    @inlinable
    public func batchDeregisterTargets(loadBalancerId: String, targets: [BatchTarget], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDeregisterTargetsResponse> {
        self.batchDeregisterTargets(BatchDeregisterTargetsRequest(loadBalancerId: loadBalancerId, targets: targets), region: region, logger: logger, on: eventLoop)
    }

    /// 批量解绑四七层后端服务
    ///
    /// 批量解绑四七层后端服务。批量解绑的资源数量上限为500。只支持VPC网络负载均衡。
    @inlinable
    public func batchDeregisterTargets(loadBalancerId: String, targets: [BatchTarget], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDeregisterTargetsResponse {
        try await self.batchDeregisterTargets(BatchDeregisterTargetsRequest(loadBalancerId: loadBalancerId, targets: targets), region: region, logger: logger, on: eventLoop)
    }
}
