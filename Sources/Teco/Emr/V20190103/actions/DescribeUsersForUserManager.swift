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

import TecoPaginationHelpers

extension Emr {
    /// DescribeUsersForUserManager请求参数结构体
    public struct DescribeUsersForUserManagerRequest: TCPaginatedRequest {
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

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeUsersForUserManagerResponse) -> DescribeUsersForUserManagerRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeUsersForUserManagerRequest(instanceId: self.instanceId, pageNo: self.pageNo + 1, pageSize: self.pageSize, userManagerFilter: self.userManagerFilter, needKeytabInfo: self.needKeytabInfo)
        }
    }

    /// DescribeUsersForUserManager返回参数结构体
    public struct DescribeUsersForUserManagerResponse: TCPaginatedResponse {
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

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [UserManagerUserBriefInfo] {
            self.userManagerUserList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCnt
        }
    }

    /// 查询用户列表
    ///
    /// 该接口支持安装了OpenLdap组件的集群。
    /// 批量导出用户。对于kerberos集群，如果需要kertab文件下载地址，可以将NeedKeytabInfo设置为true；注意SupportDownLoadKeyTab为true，但是DownLoadKeyTabUrl为空字符串，表示keytab文件在后台没有准备好（正在生成）。
    @inlinable
    public func describeUsersForUserManager(_ input: DescribeUsersForUserManagerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUsersForUserManagerResponse> {
        self.client.execute(action: "DescribeUsersForUserManager", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询用户列表
    ///
    /// 该接口支持安装了OpenLdap组件的集群。
    /// 批量导出用户。对于kerberos集群，如果需要kertab文件下载地址，可以将NeedKeytabInfo设置为true；注意SupportDownLoadKeyTab为true，但是DownLoadKeyTabUrl为空字符串，表示keytab文件在后台没有准备好（正在生成）。
    @inlinable
    public func describeUsersForUserManager(_ input: DescribeUsersForUserManagerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsersForUserManagerResponse {
        try await self.client.execute(action: "DescribeUsersForUserManager", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询用户列表
    ///
    /// 该接口支持安装了OpenLdap组件的集群。
    /// 批量导出用户。对于kerberos集群，如果需要kertab文件下载地址，可以将NeedKeytabInfo设置为true；注意SupportDownLoadKeyTab为true，但是DownLoadKeyTabUrl为空字符串，表示keytab文件在后台没有准备好（正在生成）。
    @inlinable
    public func describeUsersForUserManager(instanceId: String, pageNo: Int64, pageSize: Int64, userManagerFilter: UserManagerFilter? = nil, needKeytabInfo: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUsersForUserManagerResponse> {
        let input = DescribeUsersForUserManagerRequest(instanceId: instanceId, pageNo: pageNo, pageSize: pageSize, userManagerFilter: userManagerFilter, needKeytabInfo: needKeytabInfo)
        return self.client.execute(action: "DescribeUsersForUserManager", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询用户列表
    ///
    /// 该接口支持安装了OpenLdap组件的集群。
    /// 批量导出用户。对于kerberos集群，如果需要kertab文件下载地址，可以将NeedKeytabInfo设置为true；注意SupportDownLoadKeyTab为true，但是DownLoadKeyTabUrl为空字符串，表示keytab文件在后台没有准备好（正在生成）。
    @inlinable
    public func describeUsersForUserManager(instanceId: String, pageNo: Int64, pageSize: Int64, userManagerFilter: UserManagerFilter? = nil, needKeytabInfo: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsersForUserManagerResponse {
        let input = DescribeUsersForUserManagerRequest(instanceId: instanceId, pageNo: pageNo, pageSize: pageSize, userManagerFilter: userManagerFilter, needKeytabInfo: needKeytabInfo)
        return try await self.client.execute(action: "DescribeUsersForUserManager", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询用户列表
    ///
    /// 该接口支持安装了OpenLdap组件的集群。
    /// 批量导出用户。对于kerberos集群，如果需要kertab文件下载地址，可以将NeedKeytabInfo设置为true；注意SupportDownLoadKeyTab为true，但是DownLoadKeyTabUrl为空字符串，表示keytab文件在后台没有准备好（正在生成）。
    @inlinable
    public func describeUsersForUserManagerPaginated(_ input: DescribeUsersForUserManagerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [UserManagerUserBriefInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeUsersForUserManager, logger: logger, on: eventLoop)
    }

    /// 查询用户列表
    ///
    /// 该接口支持安装了OpenLdap组件的集群。
    /// 批量导出用户。对于kerberos集群，如果需要kertab文件下载地址，可以将NeedKeytabInfo设置为true；注意SupportDownLoadKeyTab为true，但是DownLoadKeyTabUrl为空字符串，表示keytab文件在后台没有准备好（正在生成）。
    @inlinable @discardableResult
    public func describeUsersForUserManagerPaginated(_ input: DescribeUsersForUserManagerRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeUsersForUserManagerResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeUsersForUserManager, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询用户列表
    ///
    /// 该接口支持安装了OpenLdap组件的集群。
    /// 批量导出用户。对于kerberos集群，如果需要kertab文件下载地址，可以将NeedKeytabInfo设置为true；注意SupportDownLoadKeyTab为true，但是DownLoadKeyTabUrl为空字符串，表示keytab文件在后台没有准备好（正在生成）。
    @inlinable
    public func describeUsersForUserManagerPaginator(_ input: DescribeUsersForUserManagerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeUsersForUserManagerRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeUsersForUserManager, logger: logger, on: eventLoop)
    }
}
