//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tem {
    /// 查询 Ingress 规则列表
    ///
    /// 查询 Ingress 规则列表
    @inlinable
    public func describeIngresses(_ input: DescribeIngressesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeIngressesResponse > {
        self.client.execute(action: "DescribeIngresses", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询 Ingress 规则列表
    ///
    /// 查询 Ingress 规则列表
    @inlinable
    public func describeIngresses(_ input: DescribeIngressesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIngressesResponse {
        try await self.client.execute(action: "DescribeIngresses", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeIngresses请求参数结构体
    public struct DescribeIngressesRequest: TCRequestModel {
        /// 环境 id
        public let environmentId: String?
        
        /// 环境 namespace
        public let clusterNamespace: String?
        
        /// 来源渠道
        public let sourceChannel: Int64?
        
        /// ingress 规则名列表
        public let ingressNames: [String]?
        
        public init (environmentId: String?, clusterNamespace: String?, sourceChannel: Int64?, ingressNames: [String]?) {
            self.environmentId = environmentId
            self.clusterNamespace = clusterNamespace
            self.sourceChannel = sourceChannel
            self.ingressNames = ingressNames
        }
        
        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case clusterNamespace = "ClusterNamespace"
            case sourceChannel = "SourceChannel"
            case ingressNames = "IngressNames"
        }
    }
    
    /// DescribeIngresses返回参数结构体
    public struct DescribeIngressesResponse: TCResponseModel {
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
}