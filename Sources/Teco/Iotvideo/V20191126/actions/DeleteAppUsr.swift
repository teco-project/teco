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

extension Iotvideo {
    /// DeleteAppUsr请求参数结构体
    public struct DeleteAppUsrRequest: TCRequest {
        /// 客户的终端用户在IoT Video上的唯一标识ID
        public let accessId: String

        public init(accessId: String) {
            self.accessId = accessId
        }

        enum CodingKeys: String, CodingKey {
            case accessId = "AccessId"
        }
    }

    /// DeleteAppUsr返回参数结构体
    public struct DeleteAppUsrResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除终端用户
    ///
    /// 本接口（DeleteAppUsr）用于删除终端用户。
    @inlinable @discardableResult
    public func deleteAppUsr(_ input: DeleteAppUsrRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAppUsrResponse> {
        self.client.execute(action: "DeleteAppUsr", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除终端用户
    ///
    /// 本接口（DeleteAppUsr）用于删除终端用户。
    @inlinable @discardableResult
    public func deleteAppUsr(_ input: DeleteAppUsrRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAppUsrResponse {
        try await self.client.execute(action: "DeleteAppUsr", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除终端用户
    ///
    /// 本接口（DeleteAppUsr）用于删除终端用户。
    @inlinable @discardableResult
    public func deleteAppUsr(accessId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAppUsrResponse> {
        self.deleteAppUsr(.init(accessId: accessId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除终端用户
    ///
    /// 本接口（DeleteAppUsr）用于删除终端用户。
    @inlinable @discardableResult
    public func deleteAppUsr(accessId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAppUsrResponse {
        try await self.deleteAppUsr(.init(accessId: accessId), region: region, logger: logger, on: eventLoop)
    }
}
