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
        public func makeNextRequest(with response: GetUpgradeGroupFaceModelVersionJobListResponse) -> GetUpgradeGroupFaceModelVersionJobListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
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

        /// Extract the returned ``UpgradeJobInfo`` list from the paginated response.
        public func getItems() -> [UpgradeJobInfo] {
            self.jobInfos
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.jobNum
        }
    }

    /// 获取人员库升级任务列表
    @available(*, unavailable, message: "避免官网歧义")
    @inlinable
    public func getUpgradeGroupFaceModelVersionJobList(_ input: GetUpgradeGroupFaceModelVersionJobListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetUpgradeGroupFaceModelVersionJobListResponse> {
        fatalError("'GetUpgradeGroupFaceModelVersionJobList' is no longer available.")
    }

    /// 获取人员库升级任务列表
    @available(*, unavailable, message: "避免官网歧义")
    @inlinable
    public func getUpgradeGroupFaceModelVersionJobList(_ input: GetUpgradeGroupFaceModelVersionJobListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUpgradeGroupFaceModelVersionJobListResponse {
        fatalError("'GetUpgradeGroupFaceModelVersionJobList' is no longer available.")
    }

    /// 获取人员库升级任务列表
    @available(*, unavailable, message: "避免官网歧义")
    @inlinable
    public func getUpgradeGroupFaceModelVersionJobList(offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetUpgradeGroupFaceModelVersionJobListResponse> {
        fatalError("'GetUpgradeGroupFaceModelVersionJobList' is no longer available.")
    }

    /// 获取人员库升级任务列表
    @available(*, unavailable, message: "避免官网歧义")
    @inlinable
    public func getUpgradeGroupFaceModelVersionJobList(offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUpgradeGroupFaceModelVersionJobListResponse {
        fatalError("'GetUpgradeGroupFaceModelVersionJobList' is no longer available.")
    }

    /// 获取人员库升级任务列表
    @available(*, unavailable, message: "避免官网歧义")
    @inlinable
    public func getUpgradeGroupFaceModelVersionJobListPaginated(_ input: GetUpgradeGroupFaceModelVersionJobListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [UpgradeJobInfo])> {
        fatalError("'GetUpgradeGroupFaceModelVersionJobList' is no longer available.")
    }

    /// 获取人员库升级任务列表
    @available(*, unavailable, message: "避免官网歧义")
    @inlinable @discardableResult
    public func getUpgradeGroupFaceModelVersionJobListPaginated(_ input: GetUpgradeGroupFaceModelVersionJobListRequest, region: TCRegion? = nil, onResponse: @escaping (GetUpgradeGroupFaceModelVersionJobListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        fatalError("'GetUpgradeGroupFaceModelVersionJobList' is no longer available.")
    }

    /// 获取人员库升级任务列表
    ///
    /// - Returns: `AsyncSequence`s of ``UpgradeJobInfo`` and ``GetUpgradeGroupFaceModelVersionJobListResponse`` that can be iterated over asynchronously on demand.
    @available(*, unavailable, message: "避免官网歧义")
    @inlinable
    public func getUpgradeGroupFaceModelVersionJobListPaginator(_ input: GetUpgradeGroupFaceModelVersionJobListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<GetUpgradeGroupFaceModelVersionJobListRequest> {
        fatalError("'GetUpgradeGroupFaceModelVersionJobList' is no longer available.")
    }
}
