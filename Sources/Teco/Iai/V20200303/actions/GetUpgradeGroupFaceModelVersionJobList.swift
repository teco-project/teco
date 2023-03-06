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

extension Iai {
    /// GetUpgradeGroupFaceModelVersionJobList请求参数结构体
    public struct GetUpgradeGroupFaceModelVersionJobListRequest: TCPaginatedRequest {
        /// 起始序号，默认值为0。
        public let offset: UInt64?

        /// 返回数量，默认值为10，最大值为1000。
        public let limit: UInt64?

        public init(offset: UInt64? = nil, limit: UInt64? = nil) {
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: GetUpgradeGroupFaceModelVersionJobListResponse) -> GetUpgradeGroupFaceModelVersionJobListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return GetUpgradeGroupFaceModelVersionJobListRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// GetUpgradeGroupFaceModelVersionJobList返回参数结构体
    public struct GetUpgradeGroupFaceModelVersionJobListResponse: TCPaginatedResponse {
        /// 人员库升级任务信息列表。
        public let jobInfos: [UpgradeJobInfo]

        /// 升级任务总数量。
        public let jobNum: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobInfos = "JobInfos"
            case jobNum = "JobNum"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [UpgradeJobInfo] {
            self.jobInfos
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.jobNum
        }
    }

    /// 获取人员库升级任务列表
    @inlinable
    public func getUpgradeGroupFaceModelVersionJobList(_ input: GetUpgradeGroupFaceModelVersionJobListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetUpgradeGroupFaceModelVersionJobListResponse> {
        self.client.execute(action: "GetUpgradeGroupFaceModelVersionJobList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取人员库升级任务列表
    @inlinable
    public func getUpgradeGroupFaceModelVersionJobList(_ input: GetUpgradeGroupFaceModelVersionJobListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUpgradeGroupFaceModelVersionJobListResponse {
        try await self.client.execute(action: "GetUpgradeGroupFaceModelVersionJobList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取人员库升级任务列表
    @inlinable
    public func getUpgradeGroupFaceModelVersionJobList(offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetUpgradeGroupFaceModelVersionJobListResponse> {
        let input = GetUpgradeGroupFaceModelVersionJobListRequest(offset: offset, limit: limit)
        return self.client.execute(action: "GetUpgradeGroupFaceModelVersionJobList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取人员库升级任务列表
    @inlinable
    public func getUpgradeGroupFaceModelVersionJobList(offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUpgradeGroupFaceModelVersionJobListResponse {
        let input = GetUpgradeGroupFaceModelVersionJobListRequest(offset: offset, limit: limit)
        return try await self.client.execute(action: "GetUpgradeGroupFaceModelVersionJobList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取人员库升级任务列表
    @inlinable
    public func getUpgradeGroupFaceModelVersionJobListPaginated(_ input: GetUpgradeGroupFaceModelVersionJobListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [UpgradeJobInfo])> {
        self.client.paginate(input: input, region: region, command: self.getUpgradeGroupFaceModelVersionJobList, logger: logger, on: eventLoop)
    }

    /// 获取人员库升级任务列表
    @inlinable
    public func getUpgradeGroupFaceModelVersionJobListPaginated(_ input: GetUpgradeGroupFaceModelVersionJobListRequest, region: TCRegion? = nil, onResponse: @escaping (GetUpgradeGroupFaceModelVersionJobListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.getUpgradeGroupFaceModelVersionJobList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取人员库升级任务列表
    @inlinable
    public func getUpgradeGroupFaceModelVersionJobListPaginator(_ input: GetUpgradeGroupFaceModelVersionJobListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<GetUpgradeGroupFaceModelVersionJobListRequest, GetUpgradeGroupFaceModelVersionJobListResponse>.ResultSequence, responses: TCClient.Paginator<GetUpgradeGroupFaceModelVersionJobListRequest, GetUpgradeGroupFaceModelVersionJobListResponse>.ResponseSequence) {
        let results = TCClient.Paginator<GetUpgradeGroupFaceModelVersionJobListRequest, GetUpgradeGroupFaceModelVersionJobListResponse>.ResultSequence(input: input, region: region, command: self.getUpgradeGroupFaceModelVersionJobList, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<GetUpgradeGroupFaceModelVersionJobListRequest, GetUpgradeGroupFaceModelVersionJobListResponse>.ResponseSequence(input: input, region: region, command: self.getUpgradeGroupFaceModelVersionJobList, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
