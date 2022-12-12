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

extension Tem {
    /// DescribeRelatedIngresses请求参数结构体
    public struct DescribeRelatedIngressesRequest: TCRequestModel {
        /// 环境 id
        public let namespaceId: String?
        
        /// EKS namespace
        public let eksNamespace: String?
        
        /// 来源渠道
        public let sourceChannel: Int64?
        
        /// 服务 ID
        public let serviceId: String?
        
        public init (namespaceId: String? = nil, eksNamespace: String? = nil, sourceChannel: Int64? = nil, serviceId: String? = nil) {
            self.namespaceId = namespaceId
            self.eksNamespace = eksNamespace
            self.sourceChannel = sourceChannel
            self.serviceId = serviceId
        }
        
        enum CodingKeys: String, CodingKey {
            case namespaceId = "NamespaceId"
            case eksNamespace = "EksNamespace"
            case sourceChannel = "SourceChannel"
            case serviceId = "ServiceId"
        }
    }
    
    /// DescribeRelatedIngresses返回参数结构体
    public struct DescribeRelatedIngressesResponse: TCResponseModel {
        /// ingress 数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: [IngressInfo]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 查询服务关联的 Ingress 规则列表
    @inlinable
    public func describeRelatedIngresses(_ input: DescribeRelatedIngressesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRelatedIngressesResponse > {
        self.client.execute(action: "DescribeRelatedIngresses", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询服务关联的 Ingress 规则列表
    @inlinable
    public func describeRelatedIngresses(_ input: DescribeRelatedIngressesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRelatedIngressesResponse {
        try await self.client.execute(action: "DescribeRelatedIngresses", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
