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

extension Cwp {
    /// CreateSearchLog请求参数结构体
    public struct CreateSearchLogRequest: TCRequestModel {
        /// 搜索内容
        public let searchContent: String

        public init(searchContent: String) {
            self.searchContent = searchContent
        }

        enum CodingKeys: String, CodingKey {
            case searchContent = "SearchContent"
        }
    }

    /// CreateSearchLog返回参数结构体
    public struct CreateSearchLogResponse: TCResponseModel {
        /// 0：成功，非0：失败
        public let status: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 添加历史搜索记录
    @inlinable
    public func createSearchLog(_ input: CreateSearchLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSearchLogResponse> {
        self.client.execute(action: "CreateSearchLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加历史搜索记录
    @inlinable
    public func createSearchLog(_ input: CreateSearchLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSearchLogResponse {
        try await self.client.execute(action: "CreateSearchLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加历史搜索记录
    @inlinable
    public func createSearchLog(searchContent: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSearchLogResponse> {
        self.createSearchLog(CreateSearchLogRequest(searchContent: searchContent), region: region, logger: logger, on: eventLoop)
    }

    /// 添加历史搜索记录
    @inlinable
    public func createSearchLog(searchContent: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSearchLogResponse {
        try await self.createSearchLog(CreateSearchLogRequest(searchContent: searchContent), region: region, logger: logger, on: eventLoop)
    }
}
