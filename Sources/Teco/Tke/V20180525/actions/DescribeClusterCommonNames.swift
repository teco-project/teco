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

extension Tke {
    /// 获取集群子账户CommonName映射关系
    ///
    /// 获取指定子账户在RBAC授权模式中对应kube-apiserver客户端证书的CommonName字段，如果没有客户端证书，将会签发一个，此接口有最大传入子账户数量上限，当前为50
    @inlinable
    public func describeClusterCommonNames(_ input: DescribeClusterCommonNamesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeClusterCommonNamesResponse > {
        self.client.execute(action: "DescribeClusterCommonNames", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取集群子账户CommonName映射关系
    ///
    /// 获取指定子账户在RBAC授权模式中对应kube-apiserver客户端证书的CommonName字段，如果没有客户端证书，将会签发一个，此接口有最大传入子账户数量上限，当前为50
    @inlinable
    public func describeClusterCommonNames(_ input: DescribeClusterCommonNamesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterCommonNamesResponse {
        try await self.client.execute(action: "DescribeClusterCommonNames", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeClusterCommonNames请求参数结构体
    public struct DescribeClusterCommonNamesRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String
        
        /// 子账户列表，不可超出最大值50
        public let subaccountUins: [String]?
        
        /// 角色ID列表，不可超出最大值50
        public let roleIds: [String]?
        
        public init (clusterId: String, subaccountUins: [String]?, roleIds: [String]?) {
            self.clusterId = clusterId
            self.subaccountUins = subaccountUins
            self.roleIds = roleIds
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case subaccountUins = "SubaccountUins"
            case roleIds = "RoleIds"
        }
    }
    
    /// DescribeClusterCommonNames返回参数结构体
    public struct DescribeClusterCommonNamesResponse: TCResponseModel {
        /// 子账户Uin与其客户端证书的CN字段映射
        public let commonNames: [CommonName]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case commonNames = "CommonNames"
            case requestId = "RequestId"
        }
    }
}
