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

extension Ccc {
    /// DescribeSkillGroupInfoList请求参数结构体
    public struct DescribeSkillGroupInfoListRequest: TCPaginatedRequest {
        /// 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        public let sdkAppId: Int64

        /// 分页尺寸，上限 100
        public let pageSize: Int64

        /// 分页页码，从 0 开始
        public let pageNumber: Int64

        /// 技能组ID，查询单个技能组时使用
        public let skillGroupId: Int64?

        /// 查询修改时间大于等于ModifiedTime的技能组时使用
        public let modifiedTime: Int64?

        /// 技能组名称
        public let skillGroupName: String?

        public init(sdkAppId: Int64, pageSize: Int64, pageNumber: Int64, skillGroupId: Int64? = nil, modifiedTime: Int64? = nil, skillGroupName: String? = nil) {
            self.sdkAppId = sdkAppId
            self.pageSize = pageSize
            self.pageNumber = pageNumber
            self.skillGroupId = skillGroupId
            self.modifiedTime = modifiedTime
            self.skillGroupName = skillGroupName
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
            case skillGroupId = "SkillGroupId"
            case modifiedTime = "ModifiedTime"
            case skillGroupName = "SkillGroupName"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSkillGroupInfoListResponse) -> DescribeSkillGroupInfoListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeSkillGroupInfoListRequest(sdkAppId: self.sdkAppId, pageSize: self.pageSize, pageNumber: self.pageNumber + 1, skillGroupId: self.skillGroupId, modifiedTime: self.modifiedTime, skillGroupName: self.skillGroupName)
        }
    }

    /// DescribeSkillGroupInfoList返回参数结构体
    public struct DescribeSkillGroupInfoListResponse: TCPaginatedResponse {
        /// 技能组总数
        public let totalCount: Int64

        /// 技能组信息列表
        public let skillGroupList: [SkillGroupInfoItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case skillGroupList = "SkillGroupList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [SkillGroupInfoItem] {
            self.skillGroupList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取技能组信息列表
    @inlinable
    public func describeSkillGroupInfoList(_ input: DescribeSkillGroupInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSkillGroupInfoListResponse> {
        self.client.execute(action: "DescribeSkillGroupInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取技能组信息列表
    @inlinable
    public func describeSkillGroupInfoList(_ input: DescribeSkillGroupInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSkillGroupInfoListResponse {
        try await self.client.execute(action: "DescribeSkillGroupInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取技能组信息列表
    @inlinable
    public func describeSkillGroupInfoList(sdkAppId: Int64, pageSize: Int64, pageNumber: Int64, skillGroupId: Int64? = nil, modifiedTime: Int64? = nil, skillGroupName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSkillGroupInfoListResponse> {
        self.describeSkillGroupInfoList(.init(sdkAppId: sdkAppId, pageSize: pageSize, pageNumber: pageNumber, skillGroupId: skillGroupId, modifiedTime: modifiedTime, skillGroupName: skillGroupName), region: region, logger: logger, on: eventLoop)
    }

    /// 获取技能组信息列表
    @inlinable
    public func describeSkillGroupInfoList(sdkAppId: Int64, pageSize: Int64, pageNumber: Int64, skillGroupId: Int64? = nil, modifiedTime: Int64? = nil, skillGroupName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSkillGroupInfoListResponse {
        try await self.describeSkillGroupInfoList(.init(sdkAppId: sdkAppId, pageSize: pageSize, pageNumber: pageNumber, skillGroupId: skillGroupId, modifiedTime: modifiedTime, skillGroupName: skillGroupName), region: region, logger: logger, on: eventLoop)
    }

    /// 获取技能组信息列表
    @inlinable
    public func describeSkillGroupInfoListPaginated(_ input: DescribeSkillGroupInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [SkillGroupInfoItem])> {
        self.client.paginate(input: input, region: region, command: self.describeSkillGroupInfoList, logger: logger, on: eventLoop)
    }

    /// 获取技能组信息列表
    @inlinable @discardableResult
    public func describeSkillGroupInfoListPaginated(_ input: DescribeSkillGroupInfoListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSkillGroupInfoListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSkillGroupInfoList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取技能组信息列表
    ///
    /// - Returns: `AsyncSequence`s of `SkillGroupInfoItem` and `DescribeSkillGroupInfoListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSkillGroupInfoListPaginator(_ input: DescribeSkillGroupInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSkillGroupInfoListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSkillGroupInfoList, logger: logger, on: eventLoop)
    }
}
