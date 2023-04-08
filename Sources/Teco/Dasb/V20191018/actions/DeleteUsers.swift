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

extension Dasb {
    /// DeleteUsers请求参数结构体
    public struct DeleteUsersRequest: TCRequestModel {
        /// 待删除的用户ID集合
        public let idSet: [UInt64]

        public init(idSet: [UInt64]) {
            self.idSet = idSet
        }

        enum CodingKeys: String, CodingKey {
            case idSet = "IdSet"
        }
    }

    /// DeleteUsers返回参数结构体
    public struct DeleteUsersResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除用户
    @inlinable @discardableResult
    public func deleteUsers(_ input: DeleteUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUsersResponse> {
        self.client.execute(action: "DeleteUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除用户
    @inlinable @discardableResult
    public func deleteUsers(_ input: DeleteUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUsersResponse {
        try await self.client.execute(action: "DeleteUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除用户
    @inlinable @discardableResult
    public func deleteUsers(idSet: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUsersResponse> {
        self.deleteUsers(.init(idSet: idSet), region: region, logger: logger, on: eventLoop)
    }

    /// 删除用户
    @inlinable @discardableResult
    public func deleteUsers(idSet: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUsersResponse {
        try await self.deleteUsers(.init(idSet: idSet), region: region, logger: logger, on: eventLoop)
    }
}
