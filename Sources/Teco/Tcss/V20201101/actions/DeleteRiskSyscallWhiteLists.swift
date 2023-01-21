//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Tcss {
    /// DeleteRiskSyscallWhiteLists请求参数结构体
    public struct DeleteRiskSyscallWhiteListsRequest: TCRequestModel {
        /// 白名单ids
        public let whiteListIdSet: [String]

        public init(whiteListIdSet: [String]) {
            self.whiteListIdSet = whiteListIdSet
        }

        enum CodingKeys: String, CodingKey {
            case whiteListIdSet = "WhiteListIdSet"
        }
    }

    /// DeleteRiskSyscallWhiteLists返回参数结构体
    public struct DeleteRiskSyscallWhiteListsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除运行时高危系统调用白名单
    @inlinable @discardableResult
    public func deleteRiskSyscallWhiteLists(_ input: DeleteRiskSyscallWhiteListsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRiskSyscallWhiteListsResponse> {
        self.client.execute(action: "DeleteRiskSyscallWhiteLists", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除运行时高危系统调用白名单
    @inlinable @discardableResult
    public func deleteRiskSyscallWhiteLists(_ input: DeleteRiskSyscallWhiteListsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRiskSyscallWhiteListsResponse {
        try await self.client.execute(action: "DeleteRiskSyscallWhiteLists", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除运行时高危系统调用白名单
    @inlinable @discardableResult
    public func deleteRiskSyscallWhiteLists(whiteListIdSet: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRiskSyscallWhiteListsResponse> {
        self.deleteRiskSyscallWhiteLists(DeleteRiskSyscallWhiteListsRequest(whiteListIdSet: whiteListIdSet), region: region, logger: logger, on: eventLoop)
    }

    /// 删除运行时高危系统调用白名单
    @inlinable @discardableResult
    public func deleteRiskSyscallWhiteLists(whiteListIdSet: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRiskSyscallWhiteListsResponse {
        try await self.deleteRiskSyscallWhiteLists(DeleteRiskSyscallWhiteListsRequest(whiteListIdSet: whiteListIdSet), region: region, logger: logger, on: eventLoop)
    }
}
