//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// DeleteReverseShellWhiteLists请求参数结构体
    public struct DeleteReverseShellWhiteListsRequest: TCRequestModel {
        /// 白名单ids
        public let whiteListIdSet: [String]

        public init(whiteListIdSet: [String]) {
            self.whiteListIdSet = whiteListIdSet
        }

        enum CodingKeys: String, CodingKey {
            case whiteListIdSet = "WhiteListIdSet"
        }
    }

    /// DeleteReverseShellWhiteLists返回参数结构体
    public struct DeleteReverseShellWhiteListsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除运行时反弹shell白名单
    @inlinable
    public func deleteReverseShellWhiteLists(_ input: DeleteReverseShellWhiteListsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteReverseShellWhiteListsResponse > {
        self.client.execute(action: "DeleteReverseShellWhiteLists", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除运行时反弹shell白名单
    @inlinable
    public func deleteReverseShellWhiteLists(_ input: DeleteReverseShellWhiteListsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteReverseShellWhiteListsResponse {
        try await self.client.execute(action: "DeleteReverseShellWhiteLists", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除运行时反弹shell白名单
    @inlinable
    public func deleteReverseShellWhiteLists(whiteListIdSet: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteReverseShellWhiteListsResponse > {
        self.deleteReverseShellWhiteLists(DeleteReverseShellWhiteListsRequest(whiteListIdSet: whiteListIdSet), logger: logger, on: eventLoop)
    }

    /// 删除运行时反弹shell白名单
    @inlinable
    public func deleteReverseShellWhiteLists(whiteListIdSet: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteReverseShellWhiteListsResponse {
        try await self.deleteReverseShellWhiteLists(DeleteReverseShellWhiteListsRequest(whiteListIdSet: whiteListIdSet), logger: logger, on: eventLoop)
    }
}
