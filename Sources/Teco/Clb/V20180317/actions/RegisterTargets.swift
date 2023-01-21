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
    /// RegisterTargets请求参数结构体
    public struct RegisterTargetsRequest: TCRequestModel {
        /// 负载均衡实例ID。
        public let loadBalancerId: String

        /// 负载均衡监听器ID。
        public let listenerId: String

        /// 待绑定的后端服务列表，数组长度最大支持20。
        public let targets: [Target]

        /// 转发规则的ID，当绑定后端服务到七层转发规则时，必须提供此参数或Domain+Url两者之一。
        public let locationId: String?

        /// 目标转发规则的域名，提供LocationId参数时本参数不生效。
        public let domain: String?

        /// 目标转发规则的URL，提供LocationId参数时本参数不生效。
        public let url: String?

        public init(loadBalancerId: String, listenerId: String, targets: [Target], locationId: String? = nil, domain: String? = nil, url: String? = nil) {
            self.loadBalancerId = loadBalancerId
            self.listenerId = listenerId
            self.targets = targets
            self.locationId = locationId
            self.domain = domain
            self.url = url
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerId = "ListenerId"
            case targets = "Targets"
            case locationId = "LocationId"
            case domain = "Domain"
            case url = "Url"
        }
    }

    /// RegisterTargets返回参数结构体
    public struct RegisterTargetsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 绑定后端机器到监听器上
    ///
    /// RegisterTargets 接口用来将一台或多台后端服务绑定到负载均衡的监听器（或7层转发规则），在此之前您需要先行创建相关的4层监听器或7层转发规则。对于四层监听器（TCP、UDP），只需指定监听器ID即可，对于七层监听器（HTTP、HTTPS），还需通过LocationId或者Domain+Url指定转发规则。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func registerTargets(_ input: RegisterTargetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterTargetsResponse> {
        self.client.execute(action: "RegisterTargets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 绑定后端机器到监听器上
    ///
    /// RegisterTargets 接口用来将一台或多台后端服务绑定到负载均衡的监听器（或7层转发规则），在此之前您需要先行创建相关的4层监听器或7层转发规则。对于四层监听器（TCP、UDP），只需指定监听器ID即可，对于七层监听器（HTTP、HTTPS），还需通过LocationId或者Domain+Url指定转发规则。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func registerTargets(_ input: RegisterTargetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterTargetsResponse {
        try await self.client.execute(action: "RegisterTargets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 绑定后端机器到监听器上
    ///
    /// RegisterTargets 接口用来将一台或多台后端服务绑定到负载均衡的监听器（或7层转发规则），在此之前您需要先行创建相关的4层监听器或7层转发规则。对于四层监听器（TCP、UDP），只需指定监听器ID即可，对于七层监听器（HTTP、HTTPS），还需通过LocationId或者Domain+Url指定转发规则。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func registerTargets(loadBalancerId: String, listenerId: String, targets: [Target], locationId: String? = nil, domain: String? = nil, url: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterTargetsResponse> {
        self.registerTargets(RegisterTargetsRequest(loadBalancerId: loadBalancerId, listenerId: listenerId, targets: targets, locationId: locationId, domain: domain, url: url), region: region, logger: logger, on: eventLoop)
    }

    /// 绑定后端机器到监听器上
    ///
    /// RegisterTargets 接口用来将一台或多台后端服务绑定到负载均衡的监听器（或7层转发规则），在此之前您需要先行创建相关的4层监听器或7层转发规则。对于四层监听器（TCP、UDP），只需指定监听器ID即可，对于七层监听器（HTTP、HTTPS），还需通过LocationId或者Domain+Url指定转发规则。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func registerTargets(loadBalancerId: String, listenerId: String, targets: [Target], locationId: String? = nil, domain: String? = nil, url: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterTargetsResponse {
        try await self.registerTargets(RegisterTargetsRequest(loadBalancerId: loadBalancerId, listenerId: listenerId, targets: targets, locationId: locationId, domain: domain, url: url), region: region, logger: logger, on: eventLoop)
    }
}
