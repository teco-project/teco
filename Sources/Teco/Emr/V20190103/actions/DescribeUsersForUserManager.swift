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

extension Emr {
    /// DescribeUsersForUserManager请求参数结构体
    public struct DescribeUsersForUserManagerRequest: TCRequestModel {
        /// 集群实例ID
        public let instanceId: String

        /// 页码
        public let pageNo: Int64

        /// 分页的大小
        public let pageSize: Int64

        /// 查询用户列表过滤器
        public let userManagerFilter: UserManagerFilter?

        /// 是否需要keytab文件的信息，仅对开启kerberos的集群有效，默认为false
        public let needKeytabInfo: Bool?

        public init(instanceId: String, pageNo: Int64, pageSize: Int64, userManagerFilter: UserManagerFilter? = nil, needKeytabInfo: Bool? = nil) {
            self.instanceId = instanceId
            self.pageNo = pageNo
            self.pageSize = pageSize
            self.userManagerFilter = userManagerFilter
            self.needKeytabInfo = needKeytabInfo
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case pageNo = "PageNo"
            case pageSize = "PageSize"
            case userManagerFilter = "UserManagerFilter"
            case needKeytabInfo = "NeedKeytabInfo"
        }
    }

    /// DescribeUsersForUserManager返回参数结构体
    public struct DescribeUsersForUserManagerResponse: TCResponseModel {
        /// 总数
        public let totalCnt: Int64

        /// 用户信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userManagerUserList: [UserManagerUserBriefInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCnt = "TotalCnt"
            case userManagerUserList = "UserManagerUserList"
            case requestId = "RequestId"
        }
    }

    /// 查询用户列表
    ///
    /// 该接口支持安装了OpenLdap组件的集群。
    /// 批量导出用户。对于kerberos集群，如果需要kertab文件下载地址，可以将NeedKeytabInfo设置为true；注意SupportDownLoadKeyTab为true，但是DownLoadKeyTabUrl为空字符串，表示keytab文件在后台没有准备好（正在生成）。
    @inlinable
    public func describeUsersForUserManager(_ input: DescribeUsersForUserManagerRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeUsersForUserManagerResponse > {
        self.client.execute(action: "DescribeUsersForUserManager", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询用户列表
    ///
    /// 该接口支持安装了OpenLdap组件的集群。
    /// 批量导出用户。对于kerberos集群，如果需要kertab文件下载地址，可以将NeedKeytabInfo设置为true；注意SupportDownLoadKeyTab为true，但是DownLoadKeyTabUrl为空字符串，表示keytab文件在后台没有准备好（正在生成）。
    @inlinable
    public func describeUsersForUserManager(_ input: DescribeUsersForUserManagerRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsersForUserManagerResponse {
        try await self.client.execute(action: "DescribeUsersForUserManager", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询用户列表
    ///
    /// 该接口支持安装了OpenLdap组件的集群。
    /// 批量导出用户。对于kerberos集群，如果需要kertab文件下载地址，可以将NeedKeytabInfo设置为true；注意SupportDownLoadKeyTab为true，但是DownLoadKeyTabUrl为空字符串，表示keytab文件在后台没有准备好（正在生成）。
    @inlinable
    public func describeUsersForUserManager(instanceId: String, pageNo: Int64, pageSize: Int64, userManagerFilter: UserManagerFilter? = nil, needKeytabInfo: Bool? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeUsersForUserManagerResponse > {
        self.describeUsersForUserManager(DescribeUsersForUserManagerRequest(instanceId: instanceId, pageNo: pageNo, pageSize: pageSize, userManagerFilter: userManagerFilter, needKeytabInfo: needKeytabInfo), logger: logger, on: eventLoop)
    }

    /// 查询用户列表
    ///
    /// 该接口支持安装了OpenLdap组件的集群。
    /// 批量导出用户。对于kerberos集群，如果需要kertab文件下载地址，可以将NeedKeytabInfo设置为true；注意SupportDownLoadKeyTab为true，但是DownLoadKeyTabUrl为空字符串，表示keytab文件在后台没有准备好（正在生成）。
    @inlinable
    public func describeUsersForUserManager(instanceId: String, pageNo: Int64, pageSize: Int64, userManagerFilter: UserManagerFilter? = nil, needKeytabInfo: Bool? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsersForUserManagerResponse {
        try await self.describeUsersForUserManager(DescribeUsersForUserManagerRequest(instanceId: instanceId, pageNo: pageNo, pageSize: pageSize, userManagerFilter: userManagerFilter, needKeytabInfo: needKeytabInfo), logger: logger, on: eventLoop)
    }
}
