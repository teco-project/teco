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

extension Cwp {
    /// DescribeAssetUserList请求参数结构体
    public struct DescribeAssetUserListRequest: TCPaginatedRequest {
        /// 查询指定Quuid主机的信息
        public let quuid: String?

        /// 过滤条件。
        /// <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        /// <li>Name - String - 是否必填：否 - 账户名（模糊匹配）</li>
        /// <li>NameStrict - String - 是否必填：否 - 账户名（严格匹配）</li>
        /// <li>Uid - uint64 - 是否必填：否 - Uid</li>
        /// <li>Guid - uint64 - 是否必填：否 - Guid</li>
        /// <li>LoginTimeStart - String - 是否必填：否 - 开始时间，如：2021-01-11</li>
        /// <li>LoginTimeEnd - String - 是否必填：否 - 结束时间，如：2021-01-11</li>
        /// <li>LoginType - uint64 - 是否必填：否 - 0-不可登录；1-只允许key登录；2只允许密码登录；3-允许key和密码 仅linux</li>
        /// <li>OsType - String - 是否必填：否 - windows或linux</li>
        /// <li>Status - uint64 - 是否必填：否 - 账号状态：0-禁用；1-启用</li>
        /// <li>UserType - uint64 - 是否必填：否 - 账号类型：0访客用户，1标准用户，2管理员用户 仅windows</li>
        /// <li>IsDomain - uint64 - 是否必填：否 - 是否域账号：0 不是，1是 仅windows
        /// <li>IsRoot - uint64 - 是否必填：否 - 是否Root权限：0 不是，1是 仅linux
        /// <li>IsSudo - uint64 - 是否必填：否 - 是否Sudo权限：0 不是，1是 仅linux</li>
        /// <li>IsSshLogin - uint64 - 是否必填：否 - 是否ssh登录：0 不是，1是 仅linux</li>
        /// <li>ShellLoginStatus - uint64 - 是否必填：否 - 是否shell登录性，0不是；1是 仅linux</li>
        /// <li>PasswordStatus - uint64 - 是否必填：否 - 密码状态：1正常 2即将过期 3已过期 4已锁定 仅linux</li>
        /// <li>Os -String 是否必填: 否 - 操作系统( DescribeMachineOsList 接口 值 )</li>
        public let filters: [Filter]?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 排序方式，asc升序 或 desc降序
        public let order: String?

        /// 可选排序：[FirstTime|LoginTime|PasswordChangeTime|PasswordDuaTime]
        /// PasswordLockDays
        public let by: String?

        public init(quuid: String? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil) {
            self.quuid = quuid
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case quuid = "Quuid"
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case order = "Order"
            case by = "By"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeAssetUserListResponse) -> DescribeAssetUserListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAssetUserListRequest(quuid: self.quuid, filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), order: self.order, by: self.by)
        }
    }

    /// DescribeAssetUserList返回参数结构体
    public struct DescribeAssetUserListResponse: TCPaginatedResponse {
        /// 记录总数
        public let total: UInt64

        /// 账号列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let users: [AssetUserBaseInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case users = "Users"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AssetUserBaseInfo] {
            self.users ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取账号列表
    @inlinable
    public func describeAssetUserList(_ input: DescribeAssetUserListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetUserListResponse> {
        self.client.execute(action: "DescribeAssetUserList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取账号列表
    @inlinable
    public func describeAssetUserList(_ input: DescribeAssetUserListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetUserListResponse {
        try await self.client.execute(action: "DescribeAssetUserList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取账号列表
    @inlinable
    public func describeAssetUserList(quuid: String? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetUserListResponse> {
        let input = DescribeAssetUserListRequest(quuid: quuid, filters: filters, limit: limit, offset: offset, order: order, by: by)
        return self.client.execute(action: "DescribeAssetUserList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取账号列表
    @inlinable
    public func describeAssetUserList(quuid: String? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetUserListResponse {
        let input = DescribeAssetUserListRequest(quuid: quuid, filters: filters, limit: limit, offset: offset, order: order, by: by)
        return try await self.client.execute(action: "DescribeAssetUserList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取账号列表
    @inlinable
    public func describeAssetUserListPaginated(_ input: DescribeAssetUserListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AssetUserBaseInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAssetUserList, logger: logger, on: eventLoop)
    }

    /// 获取账号列表
    @inlinable
    public func describeAssetUserListPaginated(_ input: DescribeAssetUserListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAssetUserListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAssetUserList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取账号列表
    @inlinable
    public func describeAssetUserListPaginator(_ input: DescribeAssetUserListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeAssetUserListRequest, DescribeAssetUserListResponse>.ResultSequence, responses: TCClient.Paginator<DescribeAssetUserListRequest, DescribeAssetUserListResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeAssetUserListRequest, DescribeAssetUserListResponse>.ResultSequence(input: input, region: region, command: self.describeAssetUserList, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeAssetUserListRequest, DescribeAssetUserListResponse>.ResponseSequence(input: input, region: region, command: self.describeAssetUserList, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
