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

import Logging
import NIOCore
import TecoCore

extension Cdwch {
    /// DescribeCkSqlApis请求参数结构体
    public struct DescribeCkSqlApisRequest: TCRequest {
        /// 实例id
        public let instanceId: String

        /// api接口名称,GetClusters:获取集群cluster列表
        /// GetSystemUsers:获取系统用户列表
        /// CheckNodeCluster: 检查节点是否隶属一个cluster
        /// GetClusterDatabases: 获取一个cluster下的数据库列表
        /// GetClusterTables: 获取一个cluster下的数据库表列表
        /// GetPrivilegeUsers: 获取授权的用户列表
        /// GET_USER_CLUSTER_PRIVILEGES:获取用户cluster下的权限
        /// GetUserClusterNewPrivileges:获取用户cluster下的权限 (新版）
        /// RevokeClusterUser:解绑cluster用户
        /// DeleteSystemUser:删除系统用户 —— 必须所有cluster先解绑
        /// GetUserOptionMessages:获取用户配置备注信息
        /// GET_USER_CONFIGS:获取用户配置列表  QUOTA、PROFILE、POLICY
        public let apiType: String

        /// 集群名称，GET_SYSTEM_USERS，GET_PRIVILEGE_USERS，GET_CLUSTER_DATABASES，GET_CLUSTER_TABLES 必填
        public let cluster: String?

        /// 用户名称，api与user相关的必填
        public let userName: String?

        /// 账户的类型
        public let userType: String?

        public init(instanceId: String, apiType: String, cluster: String? = nil, userName: String? = nil, userType: String? = nil) {
            self.instanceId = instanceId
            self.apiType = apiType
            self.cluster = cluster
            self.userName = userName
            self.userType = userType
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case apiType = "ApiType"
            case cluster = "Cluster"
            case userName = "UserName"
            case userType = "UserType"
        }
    }

    /// DescribeCkSqlApis返回参数结构体
    public struct DescribeCkSqlApisResponse: TCResponse {
        /// 返回的查询数据，大部分情况是list，也可能是bool
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let returnData: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case returnData = "ReturnData"
            case requestId = "RequestId"
        }
    }

    /// 查询集群用户相关信息
    ///
    /// 查询集群用户、集群表，数据库等相关信息
    @inlinable
    public func describeCkSqlApis(_ input: DescribeCkSqlApisRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCkSqlApisResponse> {
        self.client.execute(action: "DescribeCkSqlApis", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群用户相关信息
    ///
    /// 查询集群用户、集群表，数据库等相关信息
    @inlinable
    public func describeCkSqlApis(_ input: DescribeCkSqlApisRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCkSqlApisResponse {
        try await self.client.execute(action: "DescribeCkSqlApis", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群用户相关信息
    ///
    /// 查询集群用户、集群表，数据库等相关信息
    @inlinable
    public func describeCkSqlApis(instanceId: String, apiType: String, cluster: String? = nil, userName: String? = nil, userType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCkSqlApisResponse> {
        self.describeCkSqlApis(.init(instanceId: instanceId, apiType: apiType, cluster: cluster, userName: userName, userType: userType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询集群用户相关信息
    ///
    /// 查询集群用户、集群表，数据库等相关信息
    @inlinable
    public func describeCkSqlApis(instanceId: String, apiType: String, cluster: String? = nil, userName: String? = nil, userType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCkSqlApisResponse {
        try await self.describeCkSqlApis(.init(instanceId: instanceId, apiType: apiType, cluster: cluster, userName: userName, userType: userType), region: region, logger: logger, on: eventLoop)
    }
}
