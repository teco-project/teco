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

extension Wedata {
    /// GetOfflineInstanceList请求参数结构体
    public struct GetOfflineInstanceListRequest: TCRequestModel {
        /// 第几页
        public let pageIndex: String

        /// 每页几条
        public let pageSize: UInt64

        /// 项目Id
        public let projectId: String

        /// 无
        public let searchCondition: SearchCondition?

        public init(pageIndex: String, pageSize: UInt64, projectId: String, searchCondition: SearchCondition? = nil) {
            self.pageIndex = pageIndex
            self.pageSize = pageSize
            self.projectId = projectId
            self.searchCondition = searchCondition
        }

        enum CodingKeys: String, CodingKey {
            case pageIndex = "PageIndex"
            case pageSize = "PageSize"
            case projectId = "ProjectId"
            case searchCondition = "SearchCondition"
        }
    }

    /// GetOfflineInstanceList返回参数结构体
    public struct GetOfflineInstanceListResponse: TCResponseModel {
        /// 总条数
        public let total: UInt64

        /// 实例详情
        public let list: [OfflineInstance]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case list = "List"
            case requestId = "RequestId"
        }
    }

    /// 获取离线任务实例
    @inlinable
    public func getOfflineInstanceList(_ input: GetOfflineInstanceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetOfflineInstanceListResponse> {
        self.client.execute(action: "GetOfflineInstanceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取离线任务实例
    @inlinable
    public func getOfflineInstanceList(_ input: GetOfflineInstanceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetOfflineInstanceListResponse {
        try await self.client.execute(action: "GetOfflineInstanceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取离线任务实例
    @inlinable
    public func getOfflineInstanceList(pageIndex: String, pageSize: UInt64, projectId: String, searchCondition: SearchCondition? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetOfflineInstanceListResponse> {
        self.getOfflineInstanceList(GetOfflineInstanceListRequest(pageIndex: pageIndex, pageSize: pageSize, projectId: projectId, searchCondition: searchCondition), region: region, logger: logger, on: eventLoop)
    }

    /// 获取离线任务实例
    @inlinable
    public func getOfflineInstanceList(pageIndex: String, pageSize: UInt64, projectId: String, searchCondition: SearchCondition? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetOfflineInstanceListResponse {
        try await self.getOfflineInstanceList(GetOfflineInstanceListRequest(pageIndex: pageIndex, pageSize: pageSize, projectId: projectId, searchCondition: searchCondition), region: region, logger: logger, on: eventLoop)
    }
}
