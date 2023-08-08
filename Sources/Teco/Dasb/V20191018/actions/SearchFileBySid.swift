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

extension Dasb {
    /// SearchFileBySid请求参数结构体
    public struct SearchFileBySidRequest: TCPaginatedRequest {
        /// 若入参为Id，则其他入参字段不作为搜索依据，仅按照Id来搜索会话
        public let sid: String

        /// 是否创建审计日志,通过查看按钮调用时为true,其他为false
        public let auditLog: Bool

        /// 分页的页内记录数，默认为20，最大200
        public let limit: UInt64?

        /// 可填写路径名或文件名
        public let fileName: String?

        /// 分页用偏移量
        public let offset: UInt64?

        /// 1-已执行，  2-被阻断
        public let auditAction: Int64?

        /// 以Protocol和Method为条件查询
        public let typeFilters: [SearchFileTypeFilter]?

        public init(sid: String, auditLog: Bool, limit: UInt64? = nil, fileName: String? = nil, offset: UInt64? = nil, auditAction: Int64? = nil, typeFilters: [SearchFileTypeFilter]? = nil) {
            self.sid = sid
            self.auditLog = auditLog
            self.limit = limit
            self.fileName = fileName
            self.offset = offset
            self.auditAction = auditAction
            self.typeFilters = typeFilters
        }

        enum CodingKeys: String, CodingKey {
            case sid = "Sid"
            case auditLog = "AuditLog"
            case limit = "Limit"
            case fileName = "FileName"
            case offset = "Offset"
            case auditAction = "AuditAction"
            case typeFilters = "TypeFilters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: SearchFileBySidResponse) -> SearchFileBySidRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return SearchFileBySidRequest(sid: self.sid, auditLog: self.auditLog, limit: self.limit, fileName: self.fileName, offset: (self.offset ?? 0) + .init(response.getItems().count), auditAction: self.auditAction, typeFilters: self.typeFilters)
        }
    }

    /// SearchFileBySid返回参数结构体
    public struct SearchFileBySidResponse: TCPaginatedResponse {
        /// 记录数
        public let totalCount: UInt64

        /// 某会话的文件操作列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let searchFileBySidResult: [SearchFileBySidResult]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case searchFileBySidResult = "SearchFileBySidResult"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [SearchFileBySidResult] {
            self.searchFileBySidResult ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 搜索文件传输会话下文件操作列表
    @inlinable
    public func searchFileBySid(_ input: SearchFileBySidRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchFileBySidResponse> {
        self.client.execute(action: "SearchFileBySid", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 搜索文件传输会话下文件操作列表
    @inlinable
    public func searchFileBySid(_ input: SearchFileBySidRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchFileBySidResponse {
        try await self.client.execute(action: "SearchFileBySid", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 搜索文件传输会话下文件操作列表
    @inlinable
    public func searchFileBySid(sid: String, auditLog: Bool, limit: UInt64? = nil, fileName: String? = nil, offset: UInt64? = nil, auditAction: Int64? = nil, typeFilters: [SearchFileTypeFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchFileBySidResponse> {
        self.searchFileBySid(.init(sid: sid, auditLog: auditLog, limit: limit, fileName: fileName, offset: offset, auditAction: auditAction, typeFilters: typeFilters), region: region, logger: logger, on: eventLoop)
    }

    /// 搜索文件传输会话下文件操作列表
    @inlinable
    public func searchFileBySid(sid: String, auditLog: Bool, limit: UInt64? = nil, fileName: String? = nil, offset: UInt64? = nil, auditAction: Int64? = nil, typeFilters: [SearchFileTypeFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchFileBySidResponse {
        try await self.searchFileBySid(.init(sid: sid, auditLog: auditLog, limit: limit, fileName: fileName, offset: offset, auditAction: auditAction, typeFilters: typeFilters), region: region, logger: logger, on: eventLoop)
    }

    /// 搜索文件传输会话下文件操作列表
    @inlinable
    public func searchFileBySidPaginated(_ input: SearchFileBySidRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [SearchFileBySidResult])> {
        self.client.paginate(input: input, region: region, command: self.searchFileBySid, logger: logger, on: eventLoop)
    }

    /// 搜索文件传输会话下文件操作列表
    @inlinable @discardableResult
    public func searchFileBySidPaginated(_ input: SearchFileBySidRequest, region: TCRegion? = nil, onResponse: @escaping (SearchFileBySidResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.searchFileBySid, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 搜索文件传输会话下文件操作列表
    ///
    /// - Returns: `AsyncSequence`s of `SearchFileBySidResult` and `SearchFileBySidResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func searchFileBySidPaginator(_ input: SearchFileBySidRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<SearchFileBySidRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.searchFileBySid, logger: logger, on: eventLoop)
    }
}
