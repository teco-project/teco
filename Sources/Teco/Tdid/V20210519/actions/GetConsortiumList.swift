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

extension Tdid {
    /// GetConsortiumList请求参数结构体
    public struct GetConsortiumListRequest: TCRequestModel {
        public init() {
        }
    }

    /// GetConsortiumList返回参数结构体
    public struct GetConsortiumListResponse: TCResponseModel {
        /// 联盟列表
        public let consortiumList: [ConsortiumItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case consortiumList = "ConsortiumList"
            case requestId = "RequestId"
        }
    }

    /// 获取联盟列表
    @inlinable
    public func getConsortiumList(_ input: GetConsortiumListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetConsortiumListResponse > {
        self.client.execute(action: "GetConsortiumList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取联盟列表
    @inlinable
    public func getConsortiumList(_ input: GetConsortiumListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetConsortiumListResponse {
        try await self.client.execute(action: "GetConsortiumList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取联盟列表
    @inlinable
    public func getConsortiumList(logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetConsortiumListResponse > {
        self.getConsortiumList(GetConsortiumListRequest(), logger: logger, on: eventLoop)
    }

    /// 获取联盟列表
    @inlinable
    public func getConsortiumList(logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetConsortiumListResponse {
        try await self.getConsortiumList(GetConsortiumListRequest(), logger: logger, on: eventLoop)
    }
}
