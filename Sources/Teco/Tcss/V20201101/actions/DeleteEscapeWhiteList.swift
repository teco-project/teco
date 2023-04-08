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

import TecoCore

extension Tcss {
    /// DeleteEscapeWhiteList请求参数结构体
    public struct DeleteEscapeWhiteListRequest: TCRequestModel {
        /// 白名单记录ID数组
        public let idSet: [Int64]

        public init(idSet: [Int64]) {
            self.idSet = idSet
        }

        enum CodingKeys: String, CodingKey {
            case idSet = "IDSet"
        }
    }

    /// DeleteEscapeWhiteList返回参数结构体
    public struct DeleteEscapeWhiteListResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除逃逸白名单
    @inlinable @discardableResult
    public func deleteEscapeWhiteList(_ input: DeleteEscapeWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEscapeWhiteListResponse> {
        self.client.execute(action: "DeleteEscapeWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除逃逸白名单
    @inlinable @discardableResult
    public func deleteEscapeWhiteList(_ input: DeleteEscapeWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEscapeWhiteListResponse {
        try await self.client.execute(action: "DeleteEscapeWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除逃逸白名单
    @inlinable @discardableResult
    public func deleteEscapeWhiteList(idSet: [Int64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEscapeWhiteListResponse> {
        self.deleteEscapeWhiteList(.init(idSet: idSet), region: region, logger: logger, on: eventLoop)
    }

    /// 删除逃逸白名单
    @inlinable @discardableResult
    public func deleteEscapeWhiteList(idSet: [Int64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEscapeWhiteListResponse {
        try await self.deleteEscapeWhiteList(.init(idSet: idSet), region: region, logger: logger, on: eventLoop)
    }
}
