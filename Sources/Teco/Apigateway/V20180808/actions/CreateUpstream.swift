//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// CreateUpstream请求参数结构体
    public struct CreateUpstreamRequest: TCRequestModel {
        /// 后端协议，取值范围：HTTP, HTTPS
        public let scheme: String
        
        /// 负载均衡算法，取值范围：ROUND-ROBIN
        public let algorithm: String
        
        /// VPC唯一ID
        public let uniqVpcId: String
        
        /// 后端通道名字
        public let upstreamName: String?
        
        /// 后端通道描述
        public let upstreamDescription: String?
        
        /// 后端访问类型，取值范围：IP_PORT, K8S
        public let upstreamType: String?
        
        /// 请求重试次数，默认3次
        public let retries: UInt64?
        
        /// 网关转发到后端的Host请求头
        public let upstreamHost: String?
        
        /// 后端节点
        public let nodes: [UpstreamNode]?
        
        /// 标签
        public let tags: [Tag]?
        
        /// 健康检查配置，目前只支持VPC通道
        public let healthChecker: UpstreamHealthChecker?
        
        /// K8S容器服务的配置
        public let k8sService: [K8sService]?
        
        public init (scheme: String, algorithm: String, uniqVpcId: String, upstreamName: String? = nil, upstreamDescription: String? = nil, upstreamType: String? = nil, retries: UInt64? = nil, upstreamHost: String? = nil, nodes: [UpstreamNode]? = nil, tags: [Tag]? = nil, healthChecker: UpstreamHealthChecker? = nil, k8sService: [K8sService]? = nil) {
            self.scheme = scheme
            self.algorithm = algorithm
            self.uniqVpcId = uniqVpcId
            self.upstreamName = upstreamName
            self.upstreamDescription = upstreamDescription
            self.upstreamType = upstreamType
            self.retries = retries
            self.upstreamHost = upstreamHost
            self.nodes = nodes
            self.tags = tags
            self.healthChecker = healthChecker
            self.k8sService = k8sService
        }
        
        enum CodingKeys: String, CodingKey {
            case scheme = "Scheme"
            case algorithm = "Algorithm"
            case uniqVpcId = "UniqVpcId"
            case upstreamName = "UpstreamName"
            case upstreamDescription = "UpstreamDescription"
            case upstreamType = "UpstreamType"
            case retries = "Retries"
            case upstreamHost = "UpstreamHost"
            case nodes = "Nodes"
            case tags = "Tags"
            case healthChecker = "HealthChecker"
            case k8sService = "K8sService"
        }
    }
    
    /// CreateUpstream返回参数结构体
    public struct CreateUpstreamResponse: TCResponseModel {
        /// 创建返回的唯一ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let upstreamId: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case upstreamId = "UpstreamId"
            case requestId = "RequestId"
        }
    }
    
    /// 创建后端通道
    ///
    /// 用于创建创建后端通道
    @inlinable
    public func createUpstream(_ input: CreateUpstreamRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateUpstreamResponse > {
        self.client.execute(action: "CreateUpstream", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建后端通道
    ///
    /// 用于创建创建后端通道
    @inlinable
    public func createUpstream(_ input: CreateUpstreamRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUpstreamResponse {
        try await self.client.execute(action: "CreateUpstream", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
