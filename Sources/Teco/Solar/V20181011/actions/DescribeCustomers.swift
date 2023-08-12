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
import TecoPaginationHelpers

extension Solar {
    /// DescribeCustomers请求参数结构体
    public struct DescribeCustomersRequest: TCPaginatedRequest {
        /// 查询类型，0.个人，1负责部门，2.指定部门
        public let queryType: String

        /// 分组ID
        public let groupId: String?

        /// 是否星级标记 1是 0否
        public let markFlag: Int64?

        /// 客户标签，多个标签用逗号隔开
        public let tagIds: String?

        /// 员工标识筛选，0：非员工，1：员工
        public let relChannelFlag: String?

        /// 必须存在手机 1是 0否
        public let needPhoneFlag: Int64?

        /// 省份
        public let province: String?

        /// 城市
        public let city: String?

        /// 性别 1男 2女
        public let sex: String?

        /// 城市
        public let keyWord: String?

        /// 查询开始位置
        public let offset: UInt64?

        /// 每页记录条数
        public let limit: UInt64?

        /// 子项目ID
        public let subProjectId: String?

        public init(queryType: String, groupId: String? = nil, markFlag: Int64? = nil, tagIds: String? = nil, relChannelFlag: String? = nil, needPhoneFlag: Int64? = nil, province: String? = nil, city: String? = nil, sex: String? = nil, keyWord: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, subProjectId: String? = nil) {
            self.queryType = queryType
            self.groupId = groupId
            self.markFlag = markFlag
            self.tagIds = tagIds
            self.relChannelFlag = relChannelFlag
            self.needPhoneFlag = needPhoneFlag
            self.province = province
            self.city = city
            self.sex = sex
            self.keyWord = keyWord
            self.offset = offset
            self.limit = limit
            self.subProjectId = subProjectId
        }

        enum CodingKeys: String, CodingKey {
            case queryType = "QueryType"
            case groupId = "GroupId"
            case markFlag = "MarkFlag"
            case tagIds = "TagIds"
            case relChannelFlag = "RelChannelFlag"
            case needPhoneFlag = "NeedPhoneFlag"
            case province = "Province"
            case city = "City"
            case sex = "Sex"
            case keyWord = "KeyWord"
            case offset = "Offset"
            case limit = "Limit"
            case subProjectId = "SubProjectId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCustomersResponse) -> DescribeCustomersRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCustomersRequest(queryType: self.queryType, groupId: self.groupId, markFlag: self.markFlag, tagIds: self.tagIds, relChannelFlag: self.relChannelFlag, needPhoneFlag: self.needPhoneFlag, province: self.province, city: self.city, sex: self.sex, keyWord: self.keyWord, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, subProjectId: self.subProjectId)
        }
    }

    /// DescribeCustomers返回参数结构体
    public struct DescribeCustomersResponse: TCPaginatedResponse {
        /// 总记录条数
        public let totalCount: UInt64

        /// 数据列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userList: [CustomerInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case userList = "UserList"
            case requestId = "RequestId"
        }

        /// Extract the returned ``CustomerInfo`` list from the paginated response.
        public func getItems() -> [CustomerInfo] {
            self.userList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询客户档案列表
    @inlinable
    public func describeCustomers(_ input: DescribeCustomersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomersResponse> {
        self.client.execute(action: "DescribeCustomers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询客户档案列表
    @inlinable
    public func describeCustomers(_ input: DescribeCustomersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomersResponse {
        try await self.client.execute(action: "DescribeCustomers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询客户档案列表
    @inlinable
    public func describeCustomers(queryType: String, groupId: String? = nil, markFlag: Int64? = nil, tagIds: String? = nil, relChannelFlag: String? = nil, needPhoneFlag: Int64? = nil, province: String? = nil, city: String? = nil, sex: String? = nil, keyWord: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, subProjectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomersResponse> {
        self.describeCustomers(.init(queryType: queryType, groupId: groupId, markFlag: markFlag, tagIds: tagIds, relChannelFlag: relChannelFlag, needPhoneFlag: needPhoneFlag, province: province, city: city, sex: sex, keyWord: keyWord, offset: offset, limit: limit, subProjectId: subProjectId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询客户档案列表
    @inlinable
    public func describeCustomers(queryType: String, groupId: String? = nil, markFlag: Int64? = nil, tagIds: String? = nil, relChannelFlag: String? = nil, needPhoneFlag: Int64? = nil, province: String? = nil, city: String? = nil, sex: String? = nil, keyWord: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, subProjectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomersResponse {
        try await self.describeCustomers(.init(queryType: queryType, groupId: groupId, markFlag: markFlag, tagIds: tagIds, relChannelFlag: relChannelFlag, needPhoneFlag: needPhoneFlag, province: province, city: city, sex: sex, keyWord: keyWord, offset: offset, limit: limit, subProjectId: subProjectId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询客户档案列表
    @inlinable
    public func describeCustomersPaginated(_ input: DescribeCustomersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CustomerInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeCustomers, logger: logger, on: eventLoop)
    }

    /// 查询客户档案列表
    @inlinable @discardableResult
    public func describeCustomersPaginated(_ input: DescribeCustomersRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCustomersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCustomers, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询客户档案列表
    ///
    /// - Returns: `AsyncSequence`s of ``CustomerInfo`` and ``DescribeCustomersResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCustomersPaginator(_ input: DescribeCustomersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCustomersRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCustomers, logger: logger, on: eventLoop)
    }
}
