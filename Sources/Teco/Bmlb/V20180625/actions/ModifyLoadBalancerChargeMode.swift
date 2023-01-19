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

extension Bmlb {
    /// ModifyLoadBalancerChargeMode请求参数结构体
    public struct ModifyLoadBalancerChargeModeRequest: TCRequestModel {
        /// 负载均衡实例ID。
        public let loadBalancerId: String

        /// 计费方式。flow或bandwidth。
        public let payMode: String

        /// 监听器信息，当计费方式选为 bandwidth 且此负载均衡实例下存在监听器时需填入此字段，可以自定义每个监听器带宽上限。
        public let listenerSet: [ModifyLoadBalancerChargeModeListener]?

        public init(loadBalancerId: String, payMode: String, listenerSet: [ModifyLoadBalancerChargeModeListener]? = nil) {
            self.loadBalancerId = loadBalancerId
            self.payMode = payMode
            self.listenerSet = listenerSet
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case payMode = "PayMode"
            case listenerSet = "ListenerSet"
        }
    }

    /// ModifyLoadBalancerChargeMode返回参数结构体
    public struct ModifyLoadBalancerChargeModeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更改黑石负载均衡的计费方式
    @inlinable
    public func modifyLoadBalancerChargeMode(_ input: ModifyLoadBalancerChargeModeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLoadBalancerChargeModeResponse> {
        self.client.execute(action: "ModifyLoadBalancerChargeMode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更改黑石负载均衡的计费方式
    @inlinable
    public func modifyLoadBalancerChargeMode(_ input: ModifyLoadBalancerChargeModeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLoadBalancerChargeModeResponse {
        try await self.client.execute(action: "ModifyLoadBalancerChargeMode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更改黑石负载均衡的计费方式
    @inlinable
    public func modifyLoadBalancerChargeMode(loadBalancerId: String, payMode: String, listenerSet: [ModifyLoadBalancerChargeModeListener]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLoadBalancerChargeModeResponse> {
        self.modifyLoadBalancerChargeMode(ModifyLoadBalancerChargeModeRequest(loadBalancerId: loadBalancerId, payMode: payMode, listenerSet: listenerSet), region: region, logger: logger, on: eventLoop)
    }

    /// 更改黑石负载均衡的计费方式
    @inlinable
    public func modifyLoadBalancerChargeMode(loadBalancerId: String, payMode: String, listenerSet: [ModifyLoadBalancerChargeModeListener]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLoadBalancerChargeModeResponse {
        try await self.modifyLoadBalancerChargeMode(ModifyLoadBalancerChargeModeRequest(loadBalancerId: loadBalancerId, payMode: payMode, listenerSet: listenerSet), region: region, logger: logger, on: eventLoop)
    }
}
