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

extension Clb {
    /// ModifyTargetPort请求参数结构体
    public struct ModifyTargetPortRequest: TCRequestModel {
        /// 负载均衡实例ID。
        public let loadBalancerId: String

        /// 负载均衡监听器ID。
        public let listenerId: String

        /// 要修改端口的后端服务列表。
        public let targets: [Target]

        /// 后端服务绑定到监听器或转发规则的新端口。
        public let newPort: Int64

        /// 转发规则的ID，当后端服务绑定到七层转发规则时，必须提供此参数或Domain+Url两者之一。
        public let locationId: String?

        /// 目标规则的域名，提供LocationId参数时本参数不生效。
        public let domain: String?

        /// 目标规则的URL，提供LocationId参数时本参数不生效。
        public let url: String?

        public init(loadBalancerId: String, listenerId: String, targets: [Target], newPort: Int64, locationId: String? = nil, domain: String? = nil, url: String? = nil) {
            self.loadBalancerId = loadBalancerId
            self.listenerId = listenerId
            self.targets = targets
            self.newPort = newPort
            self.locationId = locationId
            self.domain = domain
            self.url = url
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerId = "ListenerId"
            case targets = "Targets"
            case newPort = "NewPort"
            case locationId = "LocationId"
            case domain = "Domain"
            case url = "Url"
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
    /// ModifyTargetPort接口用于修改监听器绑定的后端服务的端口。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func modifyTargetPort(_ input: ModifyTargetPortRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTargetPortResponse> {
        self.client.execute(action: "ModifyTargetPort", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改监听器绑定的后端机器的端口
    ///
    /// ModifyTargetPort接口用于修改监听器绑定的后端服务的端口。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func modifyTargetPort(_ input: ModifyTargetPortRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTargetPortResponse {
        try await self.client.execute(action: "ModifyTargetPort", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改监听器绑定的后端机器的端口
    ///
    /// ModifyTargetPort接口用于修改监听器绑定的后端服务的端口。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func modifyTargetPort(loadBalancerId: String, listenerId: String, targets: [Target], newPort: Int64, locationId: String? = nil, domain: String? = nil, url: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTargetPortResponse> {
        self.modifyTargetPort(ModifyTargetPortRequest(loadBalancerId: loadBalancerId, listenerId: listenerId, targets: targets, newPort: newPort, locationId: locationId, domain: domain, url: url), region: region, logger: logger, on: eventLoop)
    }

    /// 修改监听器绑定的后端机器的端口
    ///
    /// ModifyTargetPort接口用于修改监听器绑定的后端服务的端口。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func modifyTargetPort(loadBalancerId: String, listenerId: String, targets: [Target], newPort: Int64, locationId: String? = nil, domain: String? = nil, url: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTargetPortResponse {
        try await self.modifyTargetPort(ModifyTargetPortRequest(loadBalancerId: loadBalancerId, listenerId: listenerId, targets: targets, newPort: newPort, locationId: locationId, domain: domain, url: url), region: region, logger: logger, on: eventLoop)
    }
}
