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

extension Ecm {
    /// ModifyTargetPort请求参数结构体
    public struct ModifyTargetPortRequest: TCRequestModel {
        /// 负载均衡实例 ID
        public let loadBalancerId: String

        /// 负载均衡监听器 ID
        public let listenerId: String

        /// 要修改端口的后端服务列表
        public let targets: [Target]

        /// 后端服务绑定到监听器或转发规则的新端口
        public let newPort: Int64

        public init(loadBalancerId: String, listenerId: String, targets: [Target], newPort: Int64) {
            self.loadBalancerId = loadBalancerId
            self.listenerId = listenerId
            self.targets = targets
            self.newPort = newPort
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerId = "ListenerId"
            case targets = "Targets"
            case newPort = "NewPort"
        }
    }

    /// ModifyTargetPort返回参数结构体
    public struct ModifyTargetPortResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改监听器绑定的后端机器的端口
    ///
    /// 修改监听器绑定的后端机器的端口。
    @inlinable @discardableResult
    public func modifyTargetPort(_ input: ModifyTargetPortRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTargetPortResponse> {
        self.client.execute(action: "ModifyTargetPort", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改监听器绑定的后端机器的端口
    ///
    /// 修改监听器绑定的后端机器的端口。
    @inlinable @discardableResult
    public func modifyTargetPort(_ input: ModifyTargetPortRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTargetPortResponse {
        try await self.client.execute(action: "ModifyTargetPort", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改监听器绑定的后端机器的端口
    ///
    /// 修改监听器绑定的后端机器的端口。
    @inlinable @discardableResult
    public func modifyTargetPort(loadBalancerId: String, listenerId: String, targets: [Target], newPort: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTargetPortResponse> {
        self.modifyTargetPort(ModifyTargetPortRequest(loadBalancerId: loadBalancerId, listenerId: listenerId, targets: targets, newPort: newPort), region: region, logger: logger, on: eventLoop)
    }

    /// 修改监听器绑定的后端机器的端口
    ///
    /// 修改监听器绑定的后端机器的端口。
    @inlinable @discardableResult
    public func modifyTargetPort(loadBalancerId: String, listenerId: String, targets: [Target], newPort: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTargetPortResponse {
        try await self.modifyTargetPort(ModifyTargetPortRequest(loadBalancerId: loadBalancerId, listenerId: listenerId, targets: targets, newPort: newPort), region: region, logger: logger, on: eventLoop)
    }
}
