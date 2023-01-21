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

extension Apigateway {
    /// ModifyUpstream请求参数结构体
    public struct ModifyUpstreamRequest: TCRequestModel {
        /// 后端通道唯一ID
        public let upstreamId: String

        /// 后端通道名字
        public let upstreamName: String?

        /// 后端通道描述
        public let upstreamDescription: String?

        /// 后端协议，取值范围：HTTP, HTTPS
        public let scheme: String?

        /// 后端访问类型，取值范围：IP_PORT, K8S
        public let upstreamType: String?

        /// 负载均衡算法，取值范围：ROUND_ROBIN
        public let algorithm: String?

        /// VPC唯一ID
        public let uniqVpcId: String?

        /// 请求重试次数，默认3次
        public let retries: UInt64?

        /// 网关转发到后端的 Host 请求头
        public let upstreamHost: String?

        /// 后端节点列表
        public let nodes: [UpstreamNode]?

        /// 健康检查配置，目前只支持VPC通道
        public let healthChecker: UpstreamHealthChecker?

        /// 容器服务配置
        public let k8sService: [K8sService]?

        public init(upstreamId: String, upstreamName: String? = nil, upstreamDescription: String? = nil, scheme: String? = nil, upstreamType: String? = nil, algorithm: String? = nil, uniqVpcId: String? = nil, retries: UInt64? = nil, upstreamHost: String? = nil, nodes: [UpstreamNode]? = nil, healthChecker: UpstreamHealthChecker? = nil, k8sService: [K8sService]? = nil) {
            self.upstreamId = upstreamId
            self.upstreamName = upstreamName
            self.upstreamDescription = upstreamDescription
            self.scheme = scheme
            self.upstreamType = upstreamType
            self.algorithm = algorithm
            self.uniqVpcId = uniqVpcId
            self.retries = retries
            self.upstreamHost = upstreamHost
            self.nodes = nodes
            self.healthChecker = healthChecker
            self.k8sService = k8sService
        }

        enum CodingKeys: String, CodingKey {
            case upstreamId = "UpstreamId"
            case upstreamName = "UpstreamName"
            case upstreamDescription = "UpstreamDescription"
            case scheme = "Scheme"
            case upstreamType = "UpstreamType"
            case algorithm = "Algorithm"
            case uniqVpcId = "UniqVpcId"
            case retries = "Retries"
            case upstreamHost = "UpstreamHost"
            case nodes = "Nodes"
            case healthChecker = "HealthChecker"
            case k8sService = "K8sService"
        }
    }

    /// ModifyUpstream返回参数结构体
    public struct ModifyUpstreamResponse: TCResponseModel {
        /// 返回修改后的后端通道信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: UpstreamInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 修改后端通道
    @inlinable
    public func modifyUpstream(_ input: ModifyUpstreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyUpstreamResponse> {
        self.client.execute(action: "ModifyUpstream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改后端通道
    @inlinable
    public func modifyUpstream(_ input: ModifyUpstreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyUpstreamResponse {
        try await self.client.execute(action: "ModifyUpstream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改后端通道
    @inlinable
    public func modifyUpstream(upstreamId: String, upstreamName: String? = nil, upstreamDescription: String? = nil, scheme: String? = nil, upstreamType: String? = nil, algorithm: String? = nil, uniqVpcId: String? = nil, retries: UInt64? = nil, upstreamHost: String? = nil, nodes: [UpstreamNode]? = nil, healthChecker: UpstreamHealthChecker? = nil, k8sService: [K8sService]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyUpstreamResponse> {
        self.modifyUpstream(ModifyUpstreamRequest(upstreamId: upstreamId, upstreamName: upstreamName, upstreamDescription: upstreamDescription, scheme: scheme, upstreamType: upstreamType, algorithm: algorithm, uniqVpcId: uniqVpcId, retries: retries, upstreamHost: upstreamHost, nodes: nodes, healthChecker: healthChecker, k8sService: k8sService), region: region, logger: logger, on: eventLoop)
    }

    /// 修改后端通道
    @inlinable
    public func modifyUpstream(upstreamId: String, upstreamName: String? = nil, upstreamDescription: String? = nil, scheme: String? = nil, upstreamType: String? = nil, algorithm: String? = nil, uniqVpcId: String? = nil, retries: UInt64? = nil, upstreamHost: String? = nil, nodes: [UpstreamNode]? = nil, healthChecker: UpstreamHealthChecker? = nil, k8sService: [K8sService]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyUpstreamResponse {
        try await self.modifyUpstream(ModifyUpstreamRequest(upstreamId: upstreamId, upstreamName: upstreamName, upstreamDescription: upstreamDescription, scheme: scheme, upstreamType: upstreamType, algorithm: algorithm, uniqVpcId: uniqVpcId, retries: retries, upstreamHost: upstreamHost, nodes: nodes, healthChecker: healthChecker, k8sService: k8sService), region: region, logger: logger, on: eventLoop)
    }
}
